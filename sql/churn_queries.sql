-- Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

-- Churn Rate
SELECT
ROUND(
100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
/
COUNT(*),
2
) AS Churn_Rate
FROM customers;

-- Customers by Contract
SELECT
Contract,
COUNT(*) AS Customer_Count
FROM customers
GROUP BY Contract;

-- Revenue by Contract
SELECT
Contract,
ROUND(SUM(TotalCharges),2) AS Revenue
FROM customers
GROUP BY Contract;

-- Average Monthly Charges by Churn
SELECT
Churn,
ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charges
FROM customers
GROUP BY Churn;

-- Payment Method Analysis
SELECT
PaymentMethod,
COUNT(*) AS Customers
FROM customers
GROUP BY PaymentMethod;

-- Average Tenure by Churn
SELECT
Churn,
ROUND(AVG(Tenure),2) AS Avg_Tenure
FROM customers
GROUP BY Churn;

-- High Risk Customers
SELECT *
FROM customers
WHERE Contract='Month-to-month'
AND Churn='Yes';

-- Revenue at Risk
SELECT
ROUND(SUM(TotalCharges),2) AS Revenue_At_Risk
FROM customers
WHERE Contract='Month-to-month';

-- Customer Segmentation
SELECT
Contract,
PaymentMethod,
COUNT(*) AS Customers
FROM customers
GROUP BY Contract, PaymentMethod;