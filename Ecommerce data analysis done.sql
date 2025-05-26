select * from sales_data

--Q.1 Sales by Payment Mode

SELECT "Payment Mode", SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY "Payment Mode";

--Q.2 Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;

--Q.3 Sales by Segment
SELECT Segment, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Segment;

--Q.4 Profit by Month
SELECT 
    DATE_TRUNC('month', "Order Date") AS Month,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Month
ORDER BY Month;

--Q.5 Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;


--Q.6 Sales by Sub-Category
SELECT "Sub-Category", SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY "Sub-Category";

--Q.7 Sales by Ship Mode
SELECT "Ship Mode", SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY "Ship Mode";

-- Q.8 Sales by Month
SELECT 
    DATE_TRUNC('month', "Order Date") AS Month,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

--Q.9 Profit and Sales by State
SELECT State, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY State
ORDER BY Total_Sales DESC;

