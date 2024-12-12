create database mitronbank;
use  mitronbank;

-- View Table Structures
DESCRIBE dim_customers;
DESCRIBE fact_spends;

-- Sample Data and NULL Checks
SELECT * FROM dim_customers LIMIT 10;  
SELECT * FROM fact_spends LIMIT 10;  

-- Check for NULLs or duplicates
SELECT COUNT(*) AS null_customers
FROM dim_customers
WHERE customer_id IS NULL;

SELECT COUNT(*) AS null_spends
FROM fact_spends
WHERE spend IS NULL;

SELECT count(*) AS total_customer
FROM dim_customers;

-- Check for Missing Data

SELECT 
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customers,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_gender,
    SUM(CASE WHEN age_group IS NULL THEN 1 ELSE 0 END) AS null_age_group
FROM dim_customers;

SELECT 
    SUM(CASE WHEN spend IS NULL THEN 1 ELSE 0 END) AS null_spends
FROM fact_spends;


-- Validate Primary and Foreign Key Relationships
SELECT COUNT(fs.customer_id) AS orphan_records
FROM fact_spends fs
LEFT JOIN dim_customers dc ON fs.customer_id = dc.customer_id
WHERE dc.customer_id IS NULL;


