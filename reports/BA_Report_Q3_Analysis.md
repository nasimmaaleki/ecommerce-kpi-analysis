In 2023 the company generated €2.4M across 4,764 completed orders, with an average order value of €505.
Revenue declined 27.6% in Q3, from €615K to €445K, driven by a drop  in order volume rather than lower spend per order. The business recovered strongly in Q4, reaching €752K, the strongest quarter of the year.
Key risks identified include a low customer loyalty rate of 23.4%, and a high revenue concentration in Electronics, which accounts for 60% of total revenue.
This report provides evidence-based recommendations to address seasonal demand gaps, improve customer retention, and reduce revenue concentration risk.

The objective of this analysis is to evaluate overall business performance in 2023, identify the root cause of the Q3 revenue decline, and uncover actionable opportunities to improve customer retention, product performance, and channel effectiveness.

- What is the overall performance for 2023?
- How does revenue differ across quarters and what is the growth rate between them?
- Which specific months drive the Q3 decline?
- Which sales channel generates the most revenue and orders?
- Which product category generates the most revenue and volume?
- What is the return and cancellation rate by month, did order quality worsen in Q3?
- Who are the top 10 customers by lifetime spend, and what segment are they in?
- Which products generate the most revenue and what drives their performance?
- What proportion of the customer base qualifies as loyal, and how is loyalty defined?
- Does giving a higher discount actually lead to higher spend per order?


The analysis was conducted using Python, SQL and PowerBI on a synthetic dataset representing a European e-commerce business across the full year 2023.
The dataset consists of 4 tables — orders (5,260 records),  order items (10,414 records), customers (2,000 records), and products (120 records), covering transactions, customer 
profiles, and product catalogue data.

Python was used for exploratory data analysis, KPI calculation, and data visualization across several charts.

SQL was used to answer 10 structured business questions through  multi-table joins, CTEs, Views and aggregations in DBeaver with SQLite.

Power BI was used to build an interactive management dashboard presenting key findings across revenue, customer, product, and channel dimensions.

All results were cross-validated across tools to ensure consistency and accuracy.

Findings
Q3 revenue decline:
Regarding th data through 2023, we face with the significan decline in Q3. 27.6% 
What: revenue dropped in Q3
Evidence: Q2 vs Q3 numbers, order volume vs AOV
Meaning: seasonal demand issue, not a pricing problem


**The six findings are:**

**Finding 1:  Q3 Revenue Declined 27.6% Due to Lower Demand**

Revenue dropped from €615K in Q2 to €445K in Q3, representing a 27.6% quarter-over-quarter decline and the lowest revenue quarter of the year.
Importantly, average order value remained stable at €499 in Q3 compared to €494 in Q2. This confirms the decline was driven by lower order volume, from 1,245 orders in Q2 to 891 in Q3,
rather than customers spending less per order.
This pattern indicates a seasonal demand gap rather than a structural or pricing problem, supported by the strong Q4 recovery to €752K.

**Finding 2: Only 23.4% of Customers Qualify as Loyal**

Unlike the conventional definition of loyalty based solely on account age, this analysis defines a loyal customer as one who has both a lifecycle of 6 or more months AND a number of completed orders above the customer average of 2.94.
Based on this definition, only 23.4% of the 2,000 customers qualify as loyal. This means 76.6% of the customer base has either a short relationship with the business, below-average purchase frequency, or both.
This represents a significant retention gap and suggests the majority of customers are not being effectively re-engaged after their first purchase.

**Finding 3: Electronics Accounts for 60% of Revenue, Concentration Risk**

Electronics is by far the highest performing category, generating €1.4M from 1,765 orders, approximately 60% of total annual revenue. 
The next largest category, Sports, generated only €290K. However, this level of concentration represents a structural risk. If Electronics demand declines due to market competition, supply chain disruption, or shifting consumer preferences, the business 
has no other category large enough to compensate.
Categories such as Sports and Home & Garden show healthy order  volumes but significantly lower revenue, suggesting an opportunity  to grow average order value in these categories rather than depending solely on Electronics.

**Finding 4: All Four Channels Perform Within a Close Range**

The company operates across four sales channels, Phone, Marketplace, Mobile App, and Website, which generate between €571K and €631K in revenue respectively, a difference of only 
€60K across the full year. Average order value is consistently around €500 across all channels.
This suggests no single channel has a significant competitive advantage over the others, and that customers are equally comfortable purchasing through any channel.
Rather than investing heavily in one channel, the business would benefit more from improving cross-channel consistency and customer experience, as marginal gains in any single channel are unlikely to drive meaningful revenue growth.

**Finding 5: Discounting Neither Increases Spend nor Order Volume**

To assess the effectiveness of the company's discount strategy, two relationships were tested, whether higher discounts lead to higher spend per order, and whether they drive more orders.
The correlation between discount rate and line total value was −0.05, indicating no meaningful relationship. Customers receiving a 20% discount spent an average of €214 per line item compared to €266 for full price orders.
More strikingly, order volume also decreases as discount increases. Full price orders account for 3,465 completed orders while the highest discount band generated only 440 orders.
The data suggests the business is giving away margin with no measurable return in either spend or volume. Targeted discounts for specific segments such as churned customer reactivation would be a more effective use of promotional budget.

**Finding 6 — Segmentation Gap: High-Value Customers Misclassified as Regular**

Analysis of the top 10 customers by lifetime spend revealed two customers classified as Regular segment who outperform several VIP customers in total revenue. C01319 generated €7,998 across only 5 orders, an average order value of €1,599, while C01654 generated €6,869 across 4 orders, an AOV of €1,717.

Both customers are receiving Regular tier treatment despite generating revenue comparable to or exceeding VIP customers. This suggests the current segmentation model is based on order 
frequency alone and does not account for spend per order.
If these high value customers are not identified and treated accordingly, the business risks losing disproportionate revenue through churn without realising the impact until it is too late.
Additionally, Switzerland and Germany together account for the majority of top 10 customers, suggesting these markets deserve prioritised retention investment.

**Recommendation 1: Launch a Pre-Summer Demand Campaign**

What: Design and execute a targeted marketing campaign starting in June each year, ahead of the Q3 seasonal dip.

Why: Data shows order volume consistently drops from 1,245 in Q2 to 891 in Q3 — a 28% decline. Average order value remains stable, confirming the issue is demand, not pricing. Early engagement can capture orders before the summer slowdown.

Expected outcome: A 10–15% reduction in Q3 order volume decline, partially offsetting the seasonal revenue gap and smoothing annual revenue distribution.

**Recommendation 2: Implement a Post-Purchase Re-engagement ProgrammeWhat** 
Implement a tiered post-purchase email sequence triggered at 30, 60, and 90 days after first purchase, offering personalised promotions and loyalty rewards to encourage repeat purchases.Why: Only 23.4% of customers qualify as loyal, defined as those with a lifecycle of 6 or more months and order count above the customer average of 2.94. This means 76.6% of customers have a short relationship with the business and do not return after their initial purchase. The data confirms that retaining existing customers represents a significantly larger opportunity than acquiring new ones.Expected outcome: A gradual increase in the customer loyalty rate from 23.4% toward 40%, higher repeat purchase frequency, and increased customer lifetime value across the base.

**Recommendation 3: Revise the Customer Segmentation Model**
What: Redesign the customer segmentation model to incorporate both order frequency and average order value, so that high-spending low-frequency customers are correctly identified and treated as high-value accounts.
Why: Two customers currently classified as Regular segment — C01319 (€7,998 lifetime spend, AOV €1,599) and C01654 (€6,869 lifetime spend, AOV €1,717), outperform several VIP-classified customers in total revenue. The current model appears to be based on order frequency alone, which fails to capture spend-based value. If these customers are not identified and treated accordingly, the business risks losing disproportionate revenue through undetected churn.
Expected outcome: High-value misclassified customers receive appropriate VIP tier treatment, churn risk among the most revenue-critical customers is reduced, and marketing spend is allocated more precisely based on true customer value.

**Recommendation 4: Prioritise Retention Investment in Germany and Switzerland**
What: Allocate a dedicated retention budget for customers based in Germany and Switzerland, including personalised outreach, localised promotions, and priority customer service.
Why: Analysis of the top 10 customers by lifetime value shows that the majority are located in Germany and Switzerland. These two markets consistently produce the highest-value customers and represent a disproportionate share of premium revenue.
Expected outcome: Stronger retention rates among the highest-value geographic segments, reducing churn risk in the markets that contribute most to lifetime customer value.

**Recommendation 5: Replace Blanket Discounts with Targeted Offers**
What: Discontinue broad discount campaigns and replace them with segment-specific offers — particularly reactivation discounts for churned customers and first repeat-purchase incentives for new customers.
Why: Data shows a correlation of −0.05 between discount rate and line total value, and order volume also decreases as discount depth increases. Full-price orders generate the highest revenue at €1.37M, while the 20% discount band produces only €97K. The business is currently giving away margin with no measurable return.
Expected outcome: Improved net margin on completed orders and more efficient use of promotional budget by targeting customers where discounts are most likely to change behaviour.

**Recommendation 6: Invest in Growing Non-Electronics Categories**
What: Develop targeted campaigns and expand product range in Sports, Home & Garden, and Fashion to reduce revenue dependency on Electronics.
Why: Electronics currently generates 60% of total revenue, €1.4M out of €2.4M. Sports and Home & Garden show healthy order volumes of 1,225 and 1,420 respectively but significantly lower revenue, indicating customers are buying but spending less. This concentration creates structural risk if Electronics demand declines.
Expected outcome: A more balanced revenue distribution across categories, reducing the business impact of any potential decline in Electronics demand and unlocking growth potential in underdeveloped categories.

**Recommendation 7: Improve Cross-Channel Consistency and Customer Experience**
What: Rather than investing heavily in any single channel, focus resources on delivering a consistent and seamless customer experience across all four channels: Phone, Website, Mobile App, and Marketplace.
Why: All four channels perform within a narrow revenue range of €571K to €631K, with average order values consistently around €500. No single channel dominates, meaning marginal investment in one channel is unlikely to produce significant returns.
Expected outcome: Higher customer satisfaction across all touchpoints, improved repeat purchase rates, and stronger overall channel performance without the risk of over-investing in a single channel that shows no clear competitive advantage.


## Appendix — Supporting Visualizations

**Chart 1 — Monthly Revenue Trend 2023**
![Monthly Revenue](../analysis/chart_monthly_revenue.png)

**Chart 2 — Quarterly Revenue Comparison**
![Quarterly Revenue](../analysis/chart_quarterly_revenue.png)

**Chart 3 — Revenue by Product Category**
![Category Revenue](../analysis/chart_category_revenue.png)

**Chart 4 — Channel Performance**
![Channel Performance](../analysis/chart_channel_performance.png)

**Chart 5 — Top 10 Products by Revenue**
![Top Products](../analysis/chart_top_products.png)


**Chart 6 — Customer Loyalty Distribution**
![Customer Loyalty](../analysis/chart_loyalty.png)

**Chart 7 — Discount Rate vs Line Total**
![Discount Analysis](../analysis/chart_discount_correlation.png)
