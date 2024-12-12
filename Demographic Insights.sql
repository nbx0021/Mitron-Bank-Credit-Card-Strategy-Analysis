-- Spending by Age Group
SELECT age_group, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY age_group
ORDER BY total_spending DESC;




-- Spending by Marital Status
SELECT marital_status, SUM(fs.spend) AS total_spending
FROM dim_customers dc
JOIN fact_spends fs ON dc.customer_id = fs.customer_id
GROUP BY marital_status;


-- Total spend by city and category
SELECT 
    d.city, 
    f.category, 
    SUM(f.spend) AS total_spend
FROM fact_spends f
JOIN dim_customers d ON f.customer_id = d.customer_id
GROUP BY d.city, f.category
ORDER BY d.city, total_spend DESC;


-- Average Spend by Occupation
-- Average spend by occupation
SELECT 
    d.occupation, 
    ROUND(AVG(f.spend), 2) AS avg_spend
FROM fact_spends f
JOIN dim_customers d ON f.customer_id = d.customer_id
GROUP BY d.occupation
ORDER BY avg_spend DESC;

-- Gender Distribution and Average Spend
SELECT
    d.gender,
    AVG(f.spend) AS average_spend
FROM
    fact_spends f
JOIN
    dim_customers d ON f.customer_id = d.customer_id
GROUP BY
    d.gender;





