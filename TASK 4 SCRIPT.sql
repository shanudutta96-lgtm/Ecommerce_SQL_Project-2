-- Task 4: Aggregate Functions and Grouping
-- Objective: Use aggregate functions and grouping to summarize data.

-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Count of products in each category
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;

-- 3. Average price per category
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category;

-- 4. Total sales amount (from orders table)
SELECT SUM(total_amount) AS total_sales
FROM orders;

-- 5. Total quantity ordered for each product
SELECT p.product_name, SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;

-- 6. Total revenue per customer
SELECT c.name AS customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- 7. Use HAVING to filter groups (customers spending more than 5000)
SELECT c.name AS customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING SUM(o.total_amount) > 5000
ORDER BY total_spent DESC;