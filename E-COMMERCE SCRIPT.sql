CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    country VARCHAR(50)
);
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    stock_code VARCHAR(20) UNIQUE,
    description TEXT,
    unit_price NUMERIC(10,2)
);
-- ================================
CREATE TABLE invoices (
    invoice_id SERIAL PRIMARY KEY,
    invoice_no VARCHAR(20) UNIQUE,
    invoice_date TIMESTAMP NOT NULL,
    customer_id INT REFERENCES customers(customer_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);
CREATE TABLE invoice_items (
    invoice_item_id SERIAL PRIMARY KEY,
    invoice_id INT REFERENCES invoices(invoice_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    product_id INT REFERENCES products(product_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,
    quantity INT CHECK (quantity > 0)
);
