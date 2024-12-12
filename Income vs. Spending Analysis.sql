-- Income vs. Spending Analysis

SELECT dc.avg_income, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY dc.avg_income
ORDER BY total_spending DESC;
