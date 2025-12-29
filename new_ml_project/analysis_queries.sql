
-- Total Revenue
SELECT SUM(totalamount) AS total_revenue FROM sales;

-- Revenue by Region
SELECT region, SUM(totalamount) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- Top 5 Products
SELECT product, SUM(totalamount) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT month, SUM(totalamount) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;

-- Revenue by SalesRep
SELECT salesrep, SUM(totalamount) AS revenue
FROM sales
GROUP BY salesrep
ORDER BY revenue DESC;
