-- Spending by Category
SELECT category, SUM(spend) AS total_spending
FROM fact_spends
GROUP BY category
ORDER BY total_spending DESC;

-- Spending by Category and City
SELECT dc.city, fs.category, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY dc.city, fs.category
ORDER BY dc.city, total_spending DESC;




