use edge;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    discount_price DECIMAL(10, 2)
);

INSERT INTO products (product_id, product_name, price, discount_price) VALUES
(1, 'Laptop', 1000, 900),
(2, 'Tablet', 600, 550),
(3, 'Smartphone', 800, 750),
(4, 'Desktop', 1200, 1100),
(5, 'Desktop', 1200, 1100),
(6, 'Desktop', 1200, 1100);
select * from products;



SELECT 
    p1.product_name AS product1, 
    p2.product_name AS product2, 
    p1.price AS product1_price, 
    p2.discount_price AS product2_discount_price
FROM 
    products p1
join
    products p2
ON 
    p1.price > p2.discount_price;


CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15)
);

INSERT INTO customers (customer_name, email, phone) VALUES
('John Doe', 'john.doe@example.com', '1234567890'),
('Alice Smith', 'alice.smith@example.com', '9876543210'),
('Bob Johnson', 'bob.johnson@example.com', '4561237890'),
('Emma Davis', 'emma.davis@example.com', '7891234560');


CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-01-10', 250.00),
(2, '2025-01-11', 450.50),
(3, '2025-01-12', 120.75),
(4, '2025-01-13', 320.00),
(1, '2025-01-14', 180.00);


SELECT 
    customers.customer_name, 
    orders.order_id, 
    orders.order_date, 
    orders.total_amount
FROM 
    customers
CROSS JOIN 
    orders;

    


    

