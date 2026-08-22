# Customer Revenue, Cohort & Retention Analysis — SQL

A PostgreSQL analytics project focused on customer value, cohort performance, retention, and churn risk for an e-commerce business.

## Business Objective

The analysis translates transactional and customer data into decisions around customer segmentation, retention, re-engagement, and revenue growth.

## Business Questions

1. Which customers generate the most lifetime value?
2. How does revenue differ across customer cohorts?
3. How does retention change as cohorts mature?
4. Which customers are potential churn or win-back targets?
5. What actions could improve customer lifetime value and retention?

## Tools

- PostgreSQL
- SQL
- DBeaver
- Git/GitHub

## Analysis Workflow

The project contains three core analyses plus a reusable preparation view:

1. **Customer Segmentation** — classify customers by lifetime value and quantify revenue concentration.
2. **Cohort Analysis** — compare revenue and customer behavior by first-purchase cohort.
3. **Retention Analysis** — identify retention patterns and customers at risk of becoming inactive.

Source queries:

- [`1_customer_segmentation.sql`](1_customer_segmentation.sql)
- [`2_cohort_year_analysis.sql`](2_cohort_year_analysis.sql)
- [`3_retention_analysis.sql`](3_retention_analysis.sql)
- [`create view`](create%20view)

## Key Findings

### 1. Customer Segmentation

The high-value segment represents approximately 25% of customers but contributes about 66% of revenue in the analyzed dataset.

![Customer Segmentation](https://github.com/user-attachments/assets/d8cecd3c-1bfa-459e-9be4-18a887c7b9b)

**Business implication:** Revenue is highly concentrated among valuable customers, making VIP retention and targeted win-back strategies economically important.

### 2. Cohort Revenue

Older customer cohorts show stronger cumulative spending than newer cohorts, while revenue and customer counts show weakening trends in the later periods analyzed.

![Cohort Revenue](https://github.com/user-attachments/assets/a539dd39-9f2a-4594-aa4b-91052143c70f)

![Monthly Revenue and Customers](https://github.com/user-attachments/assets/5eaf95b9-1e9f-4ef0-8e20-437a80a10ec9)

**Business implication:** Recent cohorts should be monitored closely and supported with onboarding, loyalty, and re-engagement initiatives.

### 3. Retention & Churn

Retention remains low across cohorts, with churn becoming increasingly pronounced as customers age.

![Retention Analysis](https://github.com/user-attachments/assets/fea5fa22-66c6-4bcd-a04e-e976b980047b)

**Business implication:** Early lifecycle engagement and targeted interventions for high-value inactive customers may provide better ROI than broad retention campaigns.

## Strategic Recommendations

- Prioritize retention of high-lifetime-value customers.
- Build targeted win-back campaigns for valuable inactive customers.
- Strengthen the first 12–24 months of the customer lifecycle.
- Compare newer cohorts with historically stronger cohorts to identify retention best practices.
- Monitor cohort revenue and retention as recurring management KPIs.

## SQL Techniques Demonstrated

- CTEs
- JOINs
- Aggregations
- `GROUP BY`
- Conditional logic
- Customer lifetime value calculations
- Cohort analysis
- Retention analysis
- Date-based analysis
- Reusable SQL views

## Portfolio Value

This project demonstrates how SQL can move beyond querying data to support **customer profitability, retention strategy, and management decision-making**.
