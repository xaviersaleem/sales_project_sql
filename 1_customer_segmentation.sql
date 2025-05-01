WITH customer_ltv AS (
	SELECT
		customerkey,
		full_name,
		sum(total_net_revenue) AS total_ltv
	FROM
		cohort_year_analysis
	GROUP BY
		customerkey,
		full_name
),
customer_segment AS (
	SELECT
		PERCENTILE_CONT(0.25) WITHIN GROUP (
		ORDER BY
			total_ltv
		) AS ltv_25_percent,
		PERCENTILE_CONT(0.75) WITHIN GROUP (
		ORDER BY
			total_ltv
		) AS ltv_75_percent
	FROM
		customer_ltv
),
segment_values AS(
SELECT 
	c,*,
	CASE 
		WHEN c.total_ltv < cs.ltv_25_percent THEN '1 -low - value'
		WHEN c.total_ltv <= cs.ltv_75_percent THEN '1 -mid - value'
		ELSE '3-high-value'
	END AS customer_segment
	
FROM customer_ltv c,
	customer_segment cs
)
SELECT
	customer_segment,
	sum(total_ltv) AS total_ltv,
	count(customerkey) AS customer_count,
	sum(total_ltv)/ count(customerkey) avg_ltv
FROM
	segment_values
GROUP BY 
	customer_segment
ORDER BY
	customer_segment DESC
	
	
	