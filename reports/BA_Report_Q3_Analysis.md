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


The six findings are:

**Finding 1:  Q3 Revenue Declined 27.6% Due to Lower Demand**

Revenue dropped from €615K in Q2 to €445K in Q3, representing a 27.6% quarter-over-quarter decline and the lowest revenue quarter of the year.
Importantly, average order value remained stable at €499 in Q3 compared to €494 in Q2. This confirms the decline was driven by lower order volume, from 1,245 orders in Q2 to 891 in Q3,
rather than customers spending less per order.
This pattern indicates a seasonal demand gap rather than a structural or pricing problem, supported by the strong Q4 recovery to €752K.

**Finding 2 — Only 23.4% of Customers Qualify as Loyal**

Unlike the conventional definition of loyalty based solely on account age, this analysis defines a loyal customer as one who has both a lifecycle of 6 or more months AND a number of completed orders above the customer average of 2.94.
Based on this definition, only 23.4% of the 2,000 customers qualify as loyal. This means 76.6% of the customer base has either a short relationship with the business, below-average purchase frequency, or both.
This represents a significant retention gap and suggests the majority of customers are not being effectively re-engaged after their first purchase.

**Finding 3 — Electronics Accounts for 60% of Revenue, Concentration Risk**

Electronics is by far the highest performing category, generating €1.4M from 1,765 orders, approximately 60% of total annual revenue. 
The next largest category, Sports, generated only €290K. However, this level of concentration represents a structural risk. If Electronics demand declines due to market competition, supply chain disruption, or shifting consumer preferences, the business 
has no other category large enough to compensate.
Categories such as Sports and Home & Garden show healthy order  volumes but significantly lower revenue, suggesting an opportunity  to grow average order value in these categories rather than depending solely on Electronics.
**Finding 4 — All Four Channels Perform Within a Close Range**

The company operates across four sales channels, Phone, Marketplace, Mobile App, and Website — which generate between €571K and €631K in revenue respectively, a difference of only 
€60K across the full year. Average order value is consistently around €500 across all channels.
This suggests no single channel has a significant competitive advantage over the others, and that customers are equally comfortable purchasing through any channel.
Rather than investing heavily in one channel, the business would benefit more from improving cross-channel consistency and customer experience, as marginal gains in any single channel are unlikely to drive meaningful revenue growth.
**Finding 5 — Discounting Neither Increases Spend nor Order Volume**

To assess the effectiveness of the company's discount strategy, two relationships were tested — whether higher discounts lead to 
higher spend per order, and whether they drive more orders.
The correlation between discount rate and line total value was −0.05, indicating no meaningful relationship. Customers receiving a 20% discount spent an average of €214 per line item compared to €266 for full-price orders.
More strikingly, order volume also decreases as discount increases. Full-price orders account for 3,465 completed orders while the highest discount band generated only 440 orders.

The data suggests the business is giving away margin with no measurable return in either spend or volume. Targeted discounts for specific segments such as churned customer reactivation would be a more effective use of promotional budget.

Two Regular segment customers behave like VIPs, segmentation gap

