

-- CUSTOMER SALES ANALYSIS PROJECT


-- 1. VIEW DATA
SELECT * FROM customer_sales;


-- 2. TOTAL REVENUE
SELECT SUM(Quantity * UnitPrice) AS total_revenue
FROM customer_sales;


-- 3. BEST CUSTOMERS (WHO SPENDS MOST)
SELECT CustomerName,
       SUM(Quantity * UnitPrice) AS total_spent
FROM customer_sales
GROUP BY CustomerName
ORDER BY total_spent DESC;


-- 4. MOST PURCHASED PRODUCTS
SELECT Product,
       SUM(Quantity) AS total_quantity
FROM customer_sales
GROUP BY Product
ORDER BY total_quantity DESC;


-- 5. REVENUE BY REGION
SELECT Region,
       SUM(Quantity * UnitPrice) AS revenue
FROM customer_sales
GROUP BY Region
ORDER BY revenue DESC;


-- 6. CUSTOMER PURCHASE FREQUENCY
SELECT CustomerName,
       COUNT(OrderID) AS total_orders
FROM customer_sales
GROUP BY CustomerName
ORDER BY total_orders DESC;
