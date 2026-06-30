-- select all of table ---------

SELECT * FROM customers;
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;
SELECT * FROM employees;

--Show only customer names and emails

SELECT full_name,email
FROM customers;

--Customers from Dhaka

SELECT *
FROM customers
WHERE city='Dhaka';

--Products below 2000
SELECT *
FROM products
WHERE price<2000;

--Delivered Orders
SELECT *
FROM orders
WHERE order_status='Delivered';

--Pending Payments
SELECT *
FROM payments
WHERE payment_status='Pending';


-- ORDER BY ---
--Products by Highest Price
SELECT *
FROM products
ORDER BY price DESC;

--Cheapest Products
SELECT *
FROM products
ORDER BY price ASC;

-- LIMIT --
--Top 5 Expensive Products
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

--LIKE
--Customer names starting with M
SELECT *
FROM customers
WHERE full_name LIKE 'M%';

--Email ending gmail.com
SELECT *
FROM customers
WHERE email LIKE '%gmail.com';

--betweeen
--Products between 1000 and 5000
SELECT *
FROM products
WHERE price BETWEEN 1000 AND 5000;

--Salary between 35000 and 50000
SELECT *
FROM employees
WHERE salary BETWEEN 35000 AND 50000;

--Aggregate Functions
--Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

--Total Products
SELECT COUNT(*) AS Total_Products
FROM products;

--Average Product Price
SELECT AVG(price) AS Average_Price
FROM products;

--Total Stock
SELECT SUM(stock_quantity) AS Total_Stock
FROM products;

--Average Employee Salary
SELECT AVG(salary) AS Average_Salary
FROM employees;

--AND,OR--
--Electronics products above 50000
SELECT *
FROM products
WHERE category_id=1
AND price>50000;

--Products below 5000 OR stock above 50
SELECT *
FROM products
WHERE price<5000
OR stock_quantity>50;

--Customers from Dhaka having Gmail
SELECT *
FROM customers
WHERE city='Dhaka'
AND email LIKE '%gmail.com';




--------------------------------join operation------------------------------

--Products Never Ordered
SELECT
    p.product_name
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

--Categories without Products
SELECT
    c.category_name
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id
WHERE p.product_id IS NULL;


--group by---------
--Total Orders per Customer
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

--Product Count by Category
SELECT
    category_id,
    COUNT(product_id) AS total_products
FROM products
GROUP BY category_id;

--Total Stock by Category
SELECT
    category_id,
    SUM(stock_quantity) AS stock
FROM products
GROUP BY category_id;


--Payment Method whose total sales > 50000
SELECT
    payment_method,
    SUM(amount) AS total_sales
FROM payments
GROUP BY payment_method
HAVING SUM(amount) > 50000;