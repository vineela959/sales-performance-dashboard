-- Top 10 Products by Sales
SELECT `Product Name`,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 States by Profit
SELECT State,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;

-- Sales by Segment
SELECT Segment,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Average Order Value
SELECT ROUND(
           SUM(Sales) / COUNT(DISTINCT `Order ID`),
           2
       ) AS Average_Order_Value
FROM sales;