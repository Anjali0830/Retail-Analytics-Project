CREATE DATABASE retail_analytics;
USE retail_analytics;
CREATE TABLE sales (
    order_id VARCHAR(20),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    product VARCHAR(100),
    category VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    city VARCHAR(100),
    payment_method VARCHAR(50),
    inventory_status VARCHAR(50)
);

SELECT * FROM sales LIMIT 10;

SELECT COUNT(*) AS total_records
FROM sales;

DESCRIBE sales;
