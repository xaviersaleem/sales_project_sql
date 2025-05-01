WITH customer_last_purchase AS (
    SELECT 
        customerkey,
        full_name,
        orderdate,
        row_number() OVER (PARTITION BY customerkey ORDER BY orderdate DESC) AS rn,
        first_purchase_date,
        cohort_year
    FROM cohort_year_analysis
), churned_customers AS (
    SELECT 
        customerkey,
        full_name,
        first_purchase_date,
        orderdate AS last_purchase_date,
        cohort_year,
        CASE 
            WHEN orderdate < (SELECT max(orderdate) FROM sales) - INTERVAL '6 months' THEN 'churned'
            ELSE 'active'
        END AS customer_status
    FROM customer_last_purchase
    WHERE rn = 1
      AND first_purchase_date < (SELECT max(orderdate) FROM sales) - INTERVAL '6 months'
), customer_counts AS (
    SELECT 
        cohort_year,
        customer_status,
        COUNT(customerkey) AS num_customers
    FROM churned_customers
    GROUP BY cohort_year, customer_status
), cohort_totals AS (
    SELECT 
        cohort_year,
        SUM(num_customers) AS total_customers
    FROM customer_counts
    GROUP BY cohort_year
)
SELECT 
    cc.cohort_year,
    cc.customer_status,
    cc.num_customers,
    ct.total_customers,
    ROUND(cc.num_customers * 1.0 / ct.total_customers, 2) AS status_percentage
FROM customer_counts cc
JOIN cohort_totals ct
  ON cc.cohort_year = ct.cohort_year
ORDER BY cc.cohort_year, cc.customer_status;
