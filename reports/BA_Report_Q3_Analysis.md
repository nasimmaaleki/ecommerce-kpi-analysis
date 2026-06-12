# E-Commerce Performance Analysis 2023
## Business Analyst Report

**Author:** Nasim Maleki — Business Analyst  
**Date:** December 2023  
**Tools Used:** Python · SQL (DBeaver / SQLite) · Power BI  
**Status:** Complete

---

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [Objective](#2-objective)
3. [Methodology](#3-methodology)
4. [Key Findings](#4-key-findings)
5. [Recommendations](#5-recommendations)
6. [Appendix — Visualizations](#6-appendix--visualizations)

---

## 1. Executive Summary

In 2023 the company generated **€2.4M** across **4,764 completed orders**, with an average order value of **€505**.

Revenue declined **27.6% in Q3**, from €615K to €445K, driven by a drop in order volume rather than lower spend per order. The business recovered strongly in Q4, reaching **€752K** — the strongest quarter of the year.

Key risks identified include a **low customer loyalty rate of 23.4%**, and a **high revenue concentration in Electronics**, which accounts for 60% of total revenue.

This report provides evidence-based recommendations to address seasonal demand gaps, improve customer retention, and reduce revenue concentration risk.

---

## 2. Objective

The objective of this analysis is to evaluate overall business performance in 2023, identify the root cause of the Q3 revenue decline, and uncover actionable opportunities to improve customer retention, product performance, and channel effectiveness.

Specifically, this report answers the following business questions:

| # | Business Question |
|---|-------------------|
| 1 | What is the overall performance for 2023? |
| 2 | How does revenue differ across quarters and what is the growth rate between them? |
| 3 | Which specific months drive the Q3 decline? |
| 4 | Which sales channel generates the most revenue and orders? |
| 5 | Which product category generates the most revenue and volume? |
| 6 | Did order quality worsen in Q3 — return and cancellation rates? |
| 7 | Who are the top 10 customers by lifetime spend and what segment are they in? |
| 8 | Which products generate the most revenue and what drives their performance? |
| 9 | What proportion of customers qualify as loyal and how is loyalty defined? |
| 10 | Does giving a higher discount lead to higher spend per order? |

---

## 3. Methodology

The analysis was conducted using **Python**, **SQL**, and **Power BI** on a synthetic dataset representing a European e-commerce business across the full year 2023.

| Table | Records | Description |
|-------|---------|-------------|
| orders | 5,260 | All transactions including status, channel, and revenue |
| order_items | 10,414 | Line-level product data including discount and quantity |
| customers | 2,000 | Customer profiles including join date, segment, and location |
| products | 120 | Product catalogue across 6 categories |

**Python** was used for exploratory data analysis, KPI calculation, and data visualization across 7 charts.

**SQL** was used to answer 10 structured business questions through multi-table joins, CTEs, and aggregations in DBeaver with SQLite.

**Power BI** was used to build an interactive management dashboard presenting key findings across revenue, customer, product, and channel dimensions.

All results were cross-validated across tools to ensure consistency and accuracy.

---

## 4. Key Findings

### Finding 1 — Q3 Revenue Declined 27.6% Due to Lower Demand

Revenue dropped from **€615K in Q2 to €445K in Q3**, representing a 27.6% quarter-over-quarter decline and the lowest revenue quarter of the year.

Importantly, average order value remained **stable at €499 in Q3** compared to €494 in Q2. This confirms the decline was driven by lower order volume — from **1,245 orders in Q2 to 891 in Q3** — rather than customers spending less per order.

This pattern indicates a **seasonal demand gap** rather than a structural or pricing problem, supported by the strong Q4 recovery to €752K.

---

### Finding 2 — Only 23.4% of Customers Qualify as Loyal

Unlike the conventional definition of loyalty based solely on account age, this analysis defines a loyal customer as one who meets **both** of the following criteria:

- A customer lifecycle of **6 or more months**
- A completed order count **above the customer average of 2.94**

Based on this definition, only **23.4% of the 2,000 customers** qualify as loyal. This means **76.6% of the customer base** has either a short relationship with the business, below-average purchase frequency, or both.

This represents a significant retention gap and suggests the majority of customers are not being effectively re-engaged after their first purchase.

---

### Finding 3 — Electronics Accounts for 60% of Revenue — Concentration Risk

Electronics is by far the highest performing category, generating **€1.4M from 1,765 orders** — approximately **60% of total annual revenue**. The next largest category, Sports, generated only €290K.

However, this level of concentration represents a **structural risk**. If Electronics demand declines due to market competition, supply chain disruption, or shifting consumer preferences, the business has no other category large enough to compensate.

Categories such as Sports and Home & Garden show healthy order volumes but significantly lower revenue, suggesting an opportunity to grow average order value in these categories.

---

### Finding 4 — All Four Channels Perform Within a Close Range

The company operates across four sales channels which generate between **€571K and €631K** in revenue respectively — a difference of only **€60K** across the full year. Average order value is consistently around **€500** across all channels.

| Channel | Orders | Revenue | AOV |
|---------|--------|---------|-----|
| Phone | 1,229 | €631K | €514 |
| Marketplace | 1,212 | €606K | €500 |
| Mobile App | 1,170 | €595K | €509 |
| Website | 1,153 | €571K | €496 |

No single channel has a significant competitive advantage. Rather than investing heavily in one channel, the business would benefit more from improving **cross-channel consistency and customer experience**.

---

### Finding 5 — Discounting Neither Increases Spend nor Order Volume

To assess the effectiveness of the discount strategy, two relationships were tested — whether higher discounts lead to higher spend per order, and whether they drive more orders.

The **correlation between discount rate and line total value was −0.05**, indicating no meaningful relationship. Customers receiving a 20% discount spent an average of **€214 per line item** compared to **€266 for full-price orders**.

More strikingly, **order volume also decreases as discount increases**:

| Discount Band | Orders | Avg Line Value |
|---------------|--------|----------------|
| 0% — No discount | 3,465 | €266 |
| 1–5% | 1,470 | €264 |
| 6–10% | 1,210 | €224 |
| 11–15% | 738 | €235 |
| 16–20% | 440 | €215 |

The data suggests the business is **giving away margin with no measurable return** in either spend or volume.

---

### Finding 6 — Segmentation Gap: High-Value Customers Misclassified as Regular

Analysis of the top 10 customers by lifetime spend revealed **two customers classified as Regular** who outperform several VIP customers in total revenue:

| Customer | Segment | Orders | Lifetime Value | AOV |
|----------|---------|--------|----------------|-----|
| C01319 | Regular | 5 | €7,998 | €1,599 |
| C01654 | Regular | 4 | €6,869 | €1,717 |

Both customers are receiving Regular-tier treatment despite generating VIP-level revenue. The current segmentation model appears to be based on **order frequency alone**, failing to account for spend per order.

If these customers are not identified and treated accordingly, the business risks **losing disproportionate revenue through undetected churn**. Additionally, Switzerland and Germany account for the majority of top 10 customers, suggesting these markets deserve prioritised retention investment.

---

## 5. Recommendations

### Recommendation 1 — Launch a Pre-Summer Demand Campaign

**What:** Design and execute a targeted marketing campaign starting in June each year, ahead of the Q3 seasonal dip.

**Why:** Order volume consistently drops from 1,245 in Q2 to 891 in Q3 — a 28% decline — while average order value remains stable, confirming the issue is demand, not pricing.

**Expected outcome:** A 10–15% reduction in Q3 order volume decline, partially offsetting the seasonal revenue gap and smoothing annual revenue distribution.

---

### Recommendation 2 — Implement a Post-Purchase Re-engagement Programme

**What:** Implement a tiered post-purchase email sequence triggered at 30, 60, and 90 days after first purchase, offering personalised promotions and loyalty rewards.

**Why:** Only 23.4% of customers qualify as loyal. The data confirms that 76.6% of customers do not return after their initial purchase, representing a significantly larger opportunity than new customer acquisition.

**Expected outcome:** A gradual increase in the customer loyalty rate from 23.4% toward 40%, higher repeat purchase frequency, and increased customer lifetime value.

---

### Recommendation 3 — Revise the Customer Segmentation Model

**What:** Redesign the segmentation model to incorporate both **order frequency and average order value**, so that high-spending low-frequency customers are correctly identified as high-value accounts.

**Why:** Customers C01319 (AOV €1,599) and C01654 (AOV €1,717) are classified as Regular despite outperforming VIP customers in lifetime value. The current model fails to capture spend-based value.

**Expected outcome:** High-value misclassified customers receive VIP-tier treatment, churn risk is reduced among the most revenue-critical customers, and marketing spend is allocated more precisely.

---

### Recommendation 4 — Prioritise Retention Investment in Germany and Switzerland

**What:** Allocate a dedicated retention budget for customers in Germany and Switzerland, including personalised outreach, localised promotions, and priority customer service.

**Why:** The majority of the top 10 customers by lifetime value are located in these two markets, representing a disproportionate share of premium revenue.

**Expected outcome:** Stronger retention rates in the highest-value geographic segments, reducing churn risk where it matters most.

---

### Recommendation 5 — Replace Blanket Discounts with Targeted Offers

**What:** Discontinue broad discount campaigns and replace them with segment-specific offers — particularly reactivation discounts for churned customers and first repeat-purchase incentives for new customers.

**Why:** Correlation between discount rate and line value is −0.05. Full-price orders generate €1.37M while the 20% discount band produces only €97K. The business is currently giving away margin with no measurable return.

**Expected outcome:** Improved net margin on completed orders and more efficient use of promotional budget by targeting customers where discounts are most likely to change behaviour.

---

### Recommendation 6 — Invest in Growing Non-Electronics Categories

**What:** Develop targeted campaigns and expand the product range in Sports, Home & Garden, and Fashion to reduce revenue dependency on Electronics.

**Why:** Electronics generates 60% of total revenue — €1.4M out of €2.4M. Sports and Home & Garden show healthy order volumes but significantly lower revenue, indicating untapped spend potential.

**Expected outcome:** A more balanced revenue distribution across categories, reducing structural risk and unlocking growth in underdeveloped categories.

---

### Recommendation 7 — Improve Cross-Channel Consistency and Customer Experience

**What:** Rather than investing heavily in any single channel, focus resources on delivering a consistent and seamless experience across all four channels.

**Why:** All four channels perform within a narrow revenue range of €571K to €631K with AOV consistently around €500. No single channel dominates, meaning marginal investment in one channel is unlikely to produce significant returns.

**Expected outcome:** Higher customer satisfaction across all touchpoints, improved repeat purchase rates, and stronger overall channel performance.

---

## 6. Appendix — Visualizations

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

---

*Nasim Maleki · Business Analyst · Bremen, Germany*  
*[LinkedIn](https://linkedin.com/in/nasim-maaleki) · nasimmaleki.official@gmail.com*
