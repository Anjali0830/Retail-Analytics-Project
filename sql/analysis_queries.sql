USE retail_analytics;

-- Total Revenue
SELECT SUM(quantity * price) AS total_revenue
FROM sales;


-- Top Products
SELECT Product,
       SUM(Quantity) AS total_quantity
FROM sales
GROUP BY Product
ORDER BY total_quantity DESC;


-- Revenue by City
SELECT city,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY city
ORDER BY revenue DESC;


-- Monthly Sales
SELECT DATE_FORMAT(order_date, '%m') AS month,
       SUM(quantity * price) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;


--Extra additional features

-- Sales by Category
SELECT category,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;


-- Payment Method Analysis
SELECT payment_method,
       COUNT(*) AS total_orders
FROM sales
GROUP BY payment_method
ORDER BY total_orders DESC;


-- Inventory Status Analysis
SELECT inventory_status,
       COUNT(*) AS total_products
FROM sales
GROUP BY inventory_status;
