-- Month-Wise Spending
SELECT month, SUM(spend) AS total_spending
FROM fact_spends
GROUP BY month
ORDER BY FIELD(month,'January','February','March','April', 'May', 'June', 'July', 'August', 
'September', 'October');


-- Category Trends Over Months
SELECT fs.month, fs.category, SUM(fs.spend) AS total_spending
FROM fact_spends fs
GROUP BY fs.month, fs.category
ORDER BY FIELD(fs.month, 'May', 'June', 'July', 
'August', 'September', 'October'), total_spending DESC;


