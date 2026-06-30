
-- data of categories table ---------------

INSERT INTO customers (full_name,email,phone,city)
VALUES
('Mahmudul Hasan','mahmud@gmail.com','01711111111','Dhaka'),
('Sabbir Ahmed','sabbir@gmail.com','01722222222','Khulna'),
('Nusrat Jahan','nusrat@gmail.com','01733333333','Rajshahi'),
('Rakib Hossain','rakib@gmail.com','01744444444','Chattogram'),
('Sadia Islam','sadia@gmail.com','01755555555','Sylhet'),
('Tanvir Hasan','tanvir@gmail.com','01766666666','Dhaka'),
('Arif Rahman','arif@gmail.com','01777777777','Barishal'),
('Jannatul Ferdous','jannat@gmail.com','01788888888','Cumilla'),
('Hasib Khan','hasib@gmail.com','01799999999','Rangpur'),
('Farhana Akter','farhana@gmail.com','01811111111','Mymensingh');


-- ============================================
-- data Categories Table
-- ============================================

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Fashion'),
('Home Appliances'),
('Books'),
('Sports');


-- ============================================
-- Products Table
-- ============================================

INSERT INTO products
(product_name,category_id,price,stock_quantity)
VALUES

('Dell Laptop',1,85000,20),
('HP Laptop',1,78000,15),
('iPhone 15',1,125000,12),
('Samsung Galaxy S24',1,98000,18),
('Bluetooth Headphone',1,3500,50),

('Men T-Shirt',2,650,100),
('Women Saree',2,2500,40),
('Jeans Pant',2,1800,70),

('Microwave Oven',3,14500,10),
('Refrigerator',3,65000,8),

('SQL for Beginners',4,550,90),
('Automation Testing',4,750,60),

('Football',5,1200,35),
('Cricket Bat',5,4500,25),
('Badminton Racket',5,1800,45);

-- ============================================
-- Orders Table
-- ============================================

INSERT INTO orders
(customer_id,order_date,order_status)
VALUES

(1,'2026-01-05','Delivered'),
(2,'2026-01-07','Pending'),
(3,'2026-01-10','Delivered'),
(4,'2026-02-01','Cancelled'),
(5,'2026-02-03','Delivered'),
(1,'2026-02-08','Delivered'),
(7,'2026-02-10','Pending'),
(8,'2026-02-12','Delivered'),
(9,'2026-03-01','Delivered'),
(10,'2026-03-04','Pending');

-- ============================================
-- Order Items Table
-- ============================================

INSERT INTO order_items
(order_id,product_id,quantity,unit_price)
VALUES

(1,1,1,85000),
(1,5,2,3500),

(2,6,3,650),

(3,3,1,125000),

(4,9,1,14500),

(5,11,2,550),

(6,14,1,4500),
(6,15,2,1800),

(7,2,1,78000),

(8,7,2,2500),

(9,13,3,1200),

(10,4,1,98000);

-- ============================================
-- Payments Table
-- ============================================

INSERT INTO payments
(order_id,payment_method,payment_status,amount,payment_date)
VALUES

(1,'Card','Paid',92000,'2026-01-05'),
(2,'Cash','Pending',1950,'2026-01-07'),
(3,'Card','Paid',125000,'2026-01-10'),
(4,'Card','Refunded',14500,'2026-02-01'),
(5,'Bkash','Paid',1100,'2026-02-03'),
(6,'Nagad','Paid',8100,'2026-02-08'),
(7,'Card','Pending',78000,'2026-02-10'),
(8,'Bkash','Paid',5000,'2026-02-12'),
(9,'Cash','Paid',3600,'2026-03-01'),
(10,'Card','Pending',98000,'2026-03-04');


-- ============================================
-- Employees Table
-- ============================================

INSERT INTO employees
(employee_name,designation,salary,joining_date)
VALUES

('Rahim Uddin','Manager',60000,'2022-01-10'),
('Karim Ahmed','Sales Executive',35000,'2023-05-20'),
('Nayeem Hasan','Warehouse Officer',32000,'2024-03-18'),
('Sharmin Akter','HR Officer',45000,'2021-07-12'),
('Sakib Khan','Accountant',40000,'2022-09-01');