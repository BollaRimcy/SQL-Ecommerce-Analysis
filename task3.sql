
-- a. SELECT, WHERE, ORDER BY, GROUP BY
-- =========================================

-- Total amount spent by each customer, highest first
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
WHERE status = 'Delivered'
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Customers from a specific city
SELECT name, city, signup_date
FROM customers
WHERE city = 'Hyderabad'
ORDER BY signup_date DESC;


-- ============================================
-- b. JOINS (INNER, LEFT, RIGHT)
-- ============================================

-- INNER JOIN: orders with customer + product names
SELECT o.order_id, c.name, p.product_name, o.amount, o.status
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;

-- LEFT JOIN: all customers, even those with no orders
SELECT c.customer_id, c.name, o.order_id, o.amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN: all orders, even if customer record were missing
SELECT c.name, o.order_id, o.amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;


-- ============================================
-- c. Subqueries
-- ============================================

-- Customers who spent above the average order amount
SELECT name FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders
    WHERE amount > (SELECT AVG(amount) FROM orders)
);

-- Products priced above the average product price
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);


-- ============================================
-- d. Aggregate functions (SUM, AVG)
-- ============================================

-- Average revenue per user (only delivered orders)
SELECT customer_id, AVG(amount) AS avg_revenue_per_order
FROM orders
WHERE status = 'Delivered'
GROUP BY customer_id
ORDER BY avg_revenue_per_order DESC;

-- Total revenue by product category
SELECT p.category, SUM(o.amount) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category
ORDER BY total_revenue DESC;


-- ============================================
-- e. Create a view for analysis
-- ============================================

CREATE VIEW customer_revenue AS
SELECT c.customer_id, c.name, c.city,
       SUM(o.amount) AS total_revenue,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Delivered'
GROUP BY c.customer_id, c.name, c.city;
GO

-- Query the view
SELECT * FROM customer_revenue
ORDER BY total_revenue DESC;



-- Index to speed up joins/filters on customer_id
CREATE INDEX idx_orders_customer_id ON orders(customer_id);

-- Index to speed up filters on status
CREATE INDEX idx_orders_status ON orders(status);

SELECT customer_id, SUM(amount)
FROM orders
WHERE status = 'Delivered'
GROUP BY customer_id;
