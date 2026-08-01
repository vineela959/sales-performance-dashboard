-- Check total rows
SELECT COUNT(*) AS total_rows
FROM sales_dashboard.sales;

-- Check table structure
DESCRIBE sales_dashboard.sales;

-- Total Sales
SELECT ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales;

-- Total Profit
SELECT ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales;

-- Total Rows / Line Items
SELECT COUNT(*) AS Total_Rows
FROM sales;

-- Total Unique Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM sales;
