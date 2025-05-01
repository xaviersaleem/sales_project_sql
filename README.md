# SQL .... SALES ANALYSIS

# 📊 SQL - E-Commerce Sales Analysis

## 🧠 Overview

A data-driven analysis of customer behavior, retention, and lifetime value for an e-commerce company to improve retention and maximize revenue.

---

## 🚀 TL;DR

- Analyzed $200M+ in sales using PostgreSQL to uncover trends in customer value, retention, and cohort performance.
- Identified that 25% of customers contribute 66% of total revenue.
- Proposed actionable business strategies, including a VIP program, retention initiatives, and personalized offers.

---

## 🧩 Business Objectives

1. **Customer Segmentation:** Who are our most valuable customers?
2. **Cohort Analysis:** How do different customer groups generate revenue?
3. **Retention Analysis:** Which customers haven't purchased recently?

---

## 🛠️ Tech Stack

- **Database:** PostgreSQL  
- **Tooling:** DBeaver  
- **Visualization:** ChatGPT + Power BI/Excel (inserted below)  
- **Files:** SQL scripts included for full transparency

---

## 🧼 Step 0: Data Preparation

🗃️ **File:** `0_create_view.sql`  
🔧 Description: Aggregated transactions, calculated customer revenue, and determined first purchase date per user.

- Combined transactional and customer-level data
- Calculated lifetime value (LTV) and first purchase for cohort assignment

---

## 1️⃣ Customer Segmentation

🗃️ **File:** `1_customer_segmentation.sql`  
🎯 Description: Categorized users into High, Mid, and Low-value based on LTV.


📊 **Key Metrics:**

| Segment      | % of Customers | % of Revenue | Revenue ($M) |
|--------------|----------------|--------------|--------------|
| High Value   | 25%            | 66%          | $135.4M      |
| Mid Value    | 50%            | 32%          | $66.6M       |
| Low Value    | 25%            | 2%           | $4.3M        |

💡 **Insights:**
- Offer VIP membership to 12,372 high-value customers.
- Personalize promotions to convert mid-value users.
- Re-engage low-value customers with price-sensitive offers.

---

## 2️⃣ Cohort Analysis

🗃️ **File:** `2_cohort_analysis.sql`  
📅 Description: Tracked customer revenue and activity by cohort year (based on first purchase date).


📊 **Key Findings:**
- Revenue per user is dropping (2016: ~$2800 → 2024: ~$1970).
- Customer and revenue peaks in 2022–2023; downtrend in 2024.
- Older cohorts are more valuable, suggesting a need to reapply past strategies.

💡 **Business Actions:**
- Retarget 2022–2024 cohorts with personalized win-back offers.
- Launch loyalty/subscription models to stabilize revenue streams.

---

## 3️⃣ Retention Analysis

🗃️ **File:** `3_retention_analysis.sql`  
📉 Description: Analyzed last purchase patterns to identify churned customers and retention trends.



📊 **Findings:**
- 90% churn after 2–3 years is consistent across cohorts.
- Retention rates are low (8–10%) → systemic issue.
- New cohorts show the same churn path unless intervened.

💡 **Retention Strategies:**
- Improve first-year experience with onboarding rewards & gamification.
- Launch targeted win-back campaigns for high-value churned users.
- Build a proactive churn warning system for intervention.

---

## 📌 Strategic Recommendations

| Area                     | Strategy                                                                 |
|--------------------------|--------------------------------------------------------------------------|
| 🎯 Segmentation          | Launch VIP program, create upsell path for mid-value customers          |
| 📈 Cohort Strategy       | Retarget recent cohorts, apply 2016–2018 tactics, use loyalty models     |
| 🔄 Retention Strategy    | Incentivize early usage, build churn prediction models, re-engage users  |

---

## 📂 Project Files

```bash
📁 sql/
├── 0_create_view.sql             # Clean data view combining sales & customers
├── 1_customer_segmentation.sql  # Customer LTV segmentation
├── 2_cohort_analysis.sql        # Revenue trends by cohort
├── 3_retention_analysis.sql     # Retention and churn analysis
