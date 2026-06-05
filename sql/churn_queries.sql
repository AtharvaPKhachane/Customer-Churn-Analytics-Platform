-- Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

-- Churn Rate
SELECT
ROUND(
100 *
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
/
COUNT(*),
2
) AS Churn_Rate
FROM customers;

-- Contract Analysis
SELECT
Contract,
COUNT(*) AS Customers
FROM customers
GROUP BY Contract;