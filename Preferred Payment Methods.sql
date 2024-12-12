-- Spending by Payment Type
SELECT payment_type, SUM(spend) AS total_spending
FROM fact_spends
GROUP BY payment_type
ORDER BY total_spending DESC;


-- Payment Preferences by Income Group
SELECT dc.avg_income, fs.payment_type, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY dc.avg_income, fs.payment_type
ORDER BY dc.avg_income, total_spending DESC;



