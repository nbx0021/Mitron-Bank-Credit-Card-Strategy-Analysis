use mitronbank;
-- Total Spending Analysis
SELECT SUM(spend) AS total_spending
FROM fact_spends;

-- Total Spending by City
SELECT city, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY city
ORDER BY total_spending DESC;

-- Total Spending by Gender
SELECT gender, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY gender;


-- Total Spending by Occupation
SELECT occupation, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY occupation
ORDER BY total_spending DESC;


