-- 1. FULL YEAR OVERVIEW 
-- Business question: What is the overall performance for 2023?

SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    ROUND(SUM(order_total), 2) AS total_revenue,
    ROUND(AVG(order_total), 2) AS avg_order_value
FROM orders
WHERE status = 'Completed';


-- 2. QUARTERLY REVENUE
-- Business question: How does revenue differ across quarters and what is the growth rate between them?
SELECT quarter,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    ROUND(SUM(order_total), 2)  AS total_revenue,
    ROUND(AVG(order_total), 2)  AS avg_order_value
FROM orders
WHERE status = 'Completed'
GROUP BY quarter
ORDER BY quarter;


--3. MONTHLY REVENUE TREND 
-- Business question: Which specific months drive the Q3 decline?

SELECT
    order_month,
    quarter,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    ROUND(SUM(order_total), 2) as total_revenue,
    ROUND(AVG(order_total), 2)  AS avg_order_value
FROM orders
WHERE status = 'Completed' 
GROUP BY order_month, quarter
ORDER BY order_month;


-- Channels performance 
-- 4- Business question: Which sales channel generates the most revenue and orders?
SELECT 
	channel,
	COUNT(DISTINCT order_id) AS total_orders,
	COUNT(DISTINCT customer_id) AS unique_customers,
	ROUND(SUM(order_total), 2) as total_revenue,
    ROUND(AVG(order_total), 2)  AS avg_order_value
FROM orders
WHERE status = 'Completed'
GROUP BY channel
ORDER BY  total_revenue DESC;

-- Product performance
-- 5-Business question: Which product category generates the most revenue and volume?

SELECT 
	oi.category,
	COUNT(DISTINCT o.order_id) AS total_orders,
	COUNT(DISTINCT o.customer_id) AS unique_customers,
	SUM(oi.quantity) AS units_sold,
	ROUND(SUM(oi.line_total), 2)      AS total_revenue,
	ROUND(AVG(oi.line_total), 2)      AS avg_line_value
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
WHERE status = 'Completed'
GROUP BY oi.category
ORDER BY  total_revenue DESC;    


-- Order quality by month
-- 6- Business question: What is the return and cancellation rate by month, did order quality worsen in Q3?

WITH order_status_summary AS (
    SELECT
        order_month,
        quarter,
        COUNT(DISTINCT order_id) AS total_orders,
        SUM(CASE WHEN status = 'Completed'  THEN 1 ELSE 0 END) AS completed_count,
        SUM(CASE WHEN status = 'Returned'   THEN 1 ELSE 0 END) AS returned_count,
        SUM(CASE WHEN status = 'Cancelled'  THEN 1 ELSE 0 END) AS cancelled_count
    FROM orders
    GROUP BY order_month, quarter
)

SELECT
    order_month,
    quarter,
    total_orders,
    completed_count,
    returned_count,
    cancelled_count,
    ROUND(returned_count  * 100.0 / total_orders, 2)                AS return_rate_pct,
    ROUND(cancelled_count * 100.0 / total_orders, 2)                AS cancel_rate_pct,
    ROUND((returned_count + cancelled_count) * 100.0 / total_orders, 2) AS unsuccessful_rate_pct
FROM order_status_summary
ORDER BY unsuccessful_rate_pct DESC;               


-- Valuable Customers profile
-- 7-Business question: Who are the top 10 customers by lifetime spend, and what segment are they in?
SELECT 
	c.customer_id,
	c.country,
	c.city,
	c.segment,
	COUNT(DISTINCT o.order_id) AS total_orders,
	ROUND(SUM (o.order_total),2) AS total_spent,
	ROUND(AVG(o.order_total), 2)  AS avg_order_value
From customers c
INNER JOIN orders o ON c.customer_id = o.customer_id 
WHERE status = 'Completed'
GROUP BY c.customer_id 
ORDER BY total_spent DESC 
LIMIT 10

-- doing above query by view query
-- Create the view
CREATE VIEW vw_customer_value AS
SELECT
    c.customer_id,
    c.country,
    c.city,
    c.segment,
    COUNT(DISTINCT o.order_id)      AS total_orders,
    ROUND(SUM(o.order_total), 2)    AS total_spent,
    ROUND(AVG(o.order_total), 2)    AS avg_order_value
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id;

-- 8. TOP 10 MOST VALUABLE CUSTOMERS
-- Business question: Who are the top 10 customers by lifetime spend?

SELECT *
FROM vw_customer_value
ORDER BY total_spent DESC
LIMIT 10;

-- 9. TOP 10 MOST VALUABLE PRODUCTS 
-- Business question:Top 10 products by revenue 
SELECT
    p.product_id,
    p.product_name,
    p.category,
    COUNT(DISTINCT o.order_id)       AS total_orders,
    SUM(oi.quantity)                 AS units_sold,
    ROUND(SUM(oi.line_total), 2)     AS total_revenue,
    ROUND(AVG(oi.line_total), 2)     AS avg_line_value
FROM products p
INNER JOIN order_items oi ON p.product_id = oi.product_id 
INNER JOIN orders o ON o.order_id = oi.order_id 
WHERE o.status = 'Completed'
GROUP BY p.product_id 
ORDER BY total_revenue DESC
LIMIT 10;

-- 10.Customer loyalty
DROP VIEW IF EXISTS customer_orders;
DROP VIEW IF EXISTS lifetime;
DROP VIEW IF EXISTS average_order;
-- View 1: completed order count per customer
CREATE VIEW customer_orders AS
SELECT
    c.customer_id,
    COUNT(o.order_id) AS order_number
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id;
-- View 2: lifecycle in months per customer
CREATE VIEW lifetime AS
SELECT
    customer_id,
    join_date,
    ROUND(JULIANDAY('2023-12-31') -
          JULIANDAY(join_date), 0) / 30 AS lifecycle_months
FROM customers;
-- View 3: average order count across all customers
CREATE VIEW average_order AS
SELECT
    AVG(order_number) AS avg_order_count
FROM customer_orders;
--  9. CUSTOMER LOYALTY 
-- Business question: Which customers qualify as loyal?
-- Definition: lifecycle >= 6 months AND orders > average

SELECT
    co.customer_id,
    c.segment,
    c.country,
    co.order_number,
    lt.lifecycle_months,
    ROUND(ao.avg_order_count, 2) AS avg_orders_threshold,
    CASE WHEN lt.lifecycle_months >= 6 
              AND co.order_number > ao.avg_order_count
         THEN 'Loyal' 
         ELSE 'Not Loyal' 
    END  AS is_loyal
FROM customer_orders co
LEFT JOIN lifetime lt     ON lt.customer_id = co.customer_id
LEFT JOIN customers c     ON c.customer_id  = co.customer_id
CROSS JOIN average_order ao
ORDER BY co.order_number DESC;


-- 10. CUSTOMER LOYALTY
-- Business question: Does giving a higher discount actually lead to higher spend per order?

SELECT
    CASE
        WHEN oi.discount = 0      THEN '0% - No discount'
        WHEN oi.discount <= 0.05  THEN '1-5%'
        WHEN oi.discount <= 0.1  THEN '6-10%'
        WHEN oi.discount <= 0.15   THEN '11-15%'
        ELSE '16-20%'
        
    END   AS discount_band,
    COUNT(DISTINCT o.order_id)       AS total_orders,
    SUM(oi.quantity)                 AS units_sold,
    ROUND(SUM(oi.line_total), 2)     AS total_revenue,
    ROUND(AVG(oi.line_total), 2)     AS avg_line_value

FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id 
WHERE o.status = 'Completed'
GROUP BY CASE
        WHEN oi.discount = 0      THEN '0% - No discount'
        WHEN oi.discount <= 0.05  THEN '1-5%'
        WHEN oi.discount BETWEEN 0.05 AND 0.1  THEN '6-10%'
        WHEN oi.discount BETWEEN 0.1 AND 0.15   THEN '11-15%'
        ELSE '16-20%'
        
    END
ORDER BY total_revenue DESC;

