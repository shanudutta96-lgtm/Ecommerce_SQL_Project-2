INSERT INTO customers (name, email, city)
VALUES 
('Amit Sharma', 'amit@example.com', 'Delhi'),
('Priya Singh', 'priya@example.com', 'Mumbai'),
('Rahul Verma', NULL, 'Bangalore'), -- email missing, handled with NULL
('Neha Gupta', 'neha@example.com', NULL); -- city missin
INSERT INTO customers (name, email, city)
VALUES 
('Amit Sharma', 'amit@example.com', 'Delhi'),
('Priya Singh', 'priya@example.com', 'Mumbai'),
('Rahul Verma', NULL, 'Bangalore'), -- email missing, handled with NULL
('Neha Gupta', 'neha@example.com', NULL); -- city missing
INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
(1, '2025-10-01', 55000),
(2, '2025-10-02', 2500),
(3, '2025-10-03', 1800),
(4, '2025-10-04', NULL); -- total unknown yet
INSERT INTO order_items (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 1);
-- 2. UPDATE example
UPDATE products
SET price = 2000
WHERE product_name = 'T-shirt';

-- 3. DELETE example
DELETE FROM customers
WHERE email IS NULL;

-- Verify results
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;