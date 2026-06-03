# E-Commerce Performance Analysis 2023
### Business Analyst Portfolio Project | Nasim Maleki

[![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white)](https://python.org)
[![SQL](https://img.shields.io/badge/SQL-SQLite%20%2F%20MySQL-orange?logo=mysql&logoColor=white)](https://www.mysql.com)
[![Dashboard](https://img.shields.io/badge/Dashboard-HTML%20%2F%20Chart.js-purple)](dashboard/index.html)
[![Status](https://img.shields.io/badge/Status-Complete-green)]()

---

## Business Context

A European e-commerce company experienced a significant revenue decline in Q3 2023. As Business Analyst, I was tasked with:

- Investigating the **root cause** of the Q3 revenue drop (−27.6% QoQ)
- Identifying which **customer segments**, **product categories**, and **sales channels** were most affected
- Delivering **evidence-based recommendations** to prevent recurrence and accelerate Q4 recovery

---

## Project Structure

```
project1-ecommerce-kpi/
│
├── data/                        # Source datasets (generated)
│   ├── orders.csv               # 5,260 orders · 2023
│   ├── order_items.csv          # 10,414 line items
│   ├── customers.csv            # 2,000 customers
│   └── products.csv             # 120 products across 6 categories
│
├── sql/
│   └── 01_revenue_analysis.sql  # 10 business questions answered in SQL
│
├── analysis/
│   ├── run_analysis.py          # Python runner: SQLite + result export
│   ├── monthly_revenue.csv      # Output: monthly KPIs
│   ├── quarterly_growth.csv     # Output: QoQ growth
│   ├── category_by_quarter.csv  # Output: category breakdown
│   ├── segment_performance.csv  # Output: customer segments
│   └── ...                      # 5 more analysis outputs
│
├── dashboard/
│   └── index.html               # Interactive HTML dashboard (8 charts)
│
├── reports/
│   └── BA_Report_Q3_Analysis.md # Full business analyst report
│
└── generate_data.py             # Synthetic dataset generator
```

---

## Key Findings

| # | Finding | Impact |
|---|---------|--------|
| 1 | Q3 order **volume** fell 28% — AOV remained stable | Demand issue, not pricing |
| 2 | **VIP customers** (15% of base) drive 33% of revenue | Retention risk |
| 3 | **Electronics** (largest category) fell 29% in Q3 | Seasonal demand gap |
| 4 | **Return rate** slightly elevated in Q3 (5.8% vs 5.4% avg) | Minor quality signal |
| 5 | **Direct channels** (website, app) outperform marketplace | Channel shift opportunity |
| 6 | Q4 recovered to €752K — strongest quarter of the year | Seasonal pattern confirmed |

---

## Technologies Used

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy)** | Data generation, transformation, analysis pipeline |
| **SQL (SQLite / MySQL)** | 10 structured business queries, cohort analysis, KPI extraction |
| **Chart.js** | Interactive 8-panel dashboard with hover tooltips |
| **HTML / CSS** | Professional dashboard layout and styling |
| **Excel** | Pivot table verification, stakeholder summary |

---

## How to Run

```bash
# 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/ecommerce-kpi-analysis.git
cd ecommerce-kpi-analysis

# 2. Install dependencies
pip install pandas numpy

# 3. Generate the dataset
python generate_data.py

# 4. Run all SQL analyses
python analysis/run_analysis.py

# 5. Open the dashboard
open dashboard/index.html    # macOS
# or just double-click index.html in your file explorer
```

---

## Dashboard Preview

The interactive dashboard covers:
- Monthly and quarterly revenue trends with Q3 anomaly highlighted
- Category-level stacked breakdown per quarter
- Customer segment contribution (VIP / Regular / New / Churned)
- Channel performance (Website, App, Marketplace, Phone)
- Return rate trend and discount impact analysis
- Top 10 customers by lifetime value

---

## Business Recommendations

1. **Launch Q3 seasonal campaign** — start in June with targeted promotions to pre-empt July drop
2. **Implement VIP retention programme** — early access, personalised outreach, loyalty rewards
3. **Invest in direct-channel UX** — website and app outperform marketplace; shift budget accordingly
4. **Review Fashion return process** — 18% return rate is significantly above average; size guide and product photography improvements recommended
5. **Monitor cohort retention** — Q1 cohort showed reduced activity by Q3; automated re-engagement emails recommended at the 90-day mark

---

## About This Project

This project demonstrates a complete business analyst workflow:

1. **Requirements definition** — translating business questions into measurable KPIs
2. **Data preparation** — realistic dataset with controlled seasonal patterns
3. **SQL analysis** — structured queries to extract actionable insights
4. **Visualisation** — dashboard designed for stakeholder presentation
5. **Reporting** — evidence-based recommendations with business justification

---

*Nasim Maleki · Business Analyst · Bremen, Germany*
*[LinkedIn](https://linkedin.com/in/nasim-maaleki) · nasimmaleki.official@gmail.com*
