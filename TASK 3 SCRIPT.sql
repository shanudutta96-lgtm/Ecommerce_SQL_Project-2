-- Task 3: Writing Basic SELECT Queries
-- Objective: Extract data from one or more tables using SELECT, WHERE, ORDER BY, and LIMIT.

-- 1. Retrieve all columns from the customers table
SELECT * FROM customers;

-- 2. Retrieve specific columns from products
SELECT product_name, price FROM products;

-- 3. Use WHERE clause to filter records
SELECT * FROM customers
WHERE city = 'Mumbai';

-- 4. Combine multiple conditions with AND / OR
SELECT * FROM products
WHERE category = 'Electronics' AND price > 3000;

-- 5. Use LIKE for pattern matching
SELECT * FROM customers
WHERE name LIKE 'P%';  -- names starting with 'P'

-- 6. Use BETWEEN to filter numeric or date ranges
SELECT * FROM products
WHERE price BETWEEN 2000 AND 60000;

-- 7. Sort data with ORDER BY
SELECT * FROM products
ORDER BY price DESC;

-- 8. Limit the number of rows returned
SELECT * FROM customers
LIMIT 2;

-- 9. Join tables to get combined information
SELECT c.name AS customer_name, p.product_name, oi.quantity, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_date ASC;
