
--Duplicate Email Check
SELECT
    email,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;

--Duplicate Phone Number

SELECT
    phone,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY phone
HAVING COUNT(*) > 1;

--NULL Email Check
SELECT *
FROM customers
WHERE email IS NULL;

--NULL Customer Name
SELECT *
FROM customers
WHERE full_name IS NULL;

--Products with Negative Price
SELECT *
FROM products
WHERE price < 0;

--Products with Zero Price
SELECT *
FROM products
WHERE price = 0;

--Negative Stock Check
SELECT *
FROM products
WHERE stock_quantity < 0;

--Zero Stock Products
SELECT *
FROM products
WHERE stock_quantity = 0;

--Orders Without Customer
SELECT *
FROM orders
WHERE customer_id NOT IN
(
    SELECT customer_id
    FROM customers
);


--Invalid Payment Status
FROM payments
WHERE payment_status NOT IN
(
    'Paid',
    'Pending',
    'Refunded'
);

--Invalid Payment Method
SELECT *
FROM payments
WHERE payment_method NOT IN
(
    'Cash',
    'Card',
    'Bkash',
    'Nagad'
);

--Duplicate Product Name
SELECT product_name,
COUNT(*)
    FROM products
GROUP BY product_name
    HAVING COUNT(*) > 1;

--Product Price Higher Than 5 Lakh
SELECT *
FROM products
WHERE price>500000;