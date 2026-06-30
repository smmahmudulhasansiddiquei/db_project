
-- =================== Create Customer table==========================

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    city VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ============================================
-- Categories Table
-- ============================================

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);



-- ============================================
-- Products Table
-- ============================================

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category_id INT,
    price DECIMAL(10,2) NOT NULL CHECK(price>=0),
    stock_quantity INT NOT NULL CHECK(stock_quantity>=0),

    FOREIGN KEY(category_id) REFERENCES categories(category_id)
);

-- ============================================
-- Orders Table
-- ============================================

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    order_status VARCHAR(30),

    FOREIGN KEY(customer_id)
    REFERENCES customers(customer_id)
);


-- ============================================
-- Order Items Table
-- ============================================

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT CHECK(quantity>0),
    unit_price DECIMAL(10,2),

    FOREIGN KEY(order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY(product_id)
    REFERENCES products(product_id)
);


-- ============================================
-- Payments Table
-- ============================================

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    amount DECIMAL(10,2),
    payment_date DATE,

    FOREIGN KEY(order_id)
    REFERENCES orders(order_id)
);

-- ============================================
-- Employees Table
-- ============================================

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);