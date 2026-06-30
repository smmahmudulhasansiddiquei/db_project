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