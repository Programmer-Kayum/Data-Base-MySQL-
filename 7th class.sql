 show databases;
 create database Edge;
 use edge;
 CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

select * from customers;

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany');

CREATE TABLE ORDERS(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT
);

INSERT INTO Orders (OrderDetailID, OrderID, ProductID, Quantity) 
VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
(3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40),
(6, 10250, 41, 10),
(7, 10250, 51, 35);


select *from customers
where city like 'B_rli_';

select *from customers
where city like '%B%';

select *from customers
where CustomerName like "Be%";

select *from customers
where CustomerName like "B%" or CustomerName like 'a%';

select *from customers
where CustomerName like "%e";

select *from customers
where CustomerName like "%l%";

select *from customers
where CustomerName like "%li%";

select *from customers
where CustomerName like "b%s";

select *from customers
where CustomerName like "a_%";

select *from customers
where CustomerName like "_a%";

select *from customers
where city like "berlin";

select *from customers
where city like "[ber]%";

SELECT * 
FROM customers
WHERE city LIKE 'b%' OR city LIKE 'e%' OR city LIKE 'r%';

SELECT * 
FROM customers
WHERE city REGEXP '^[ber]';

select * from customers
where city like "[a-f]%";

select *from customers
where city not in ("Dhaka","Lalmonirhat");


select * from customers
where customerId in ( select customerId from orders);


select * from customers
where customerId not in ( select customerId from orders);

select *from orders;
drop table orders;

CREATE TABLE orders (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    customer_id INT,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert Data into Orders Table
INSERT INTO orders (order_id, customer_id, product_id, quantity)
VALUES
(10248, 1, 11, 12),
(10248, 1, 42, 10),
(10248, 1, 72, 5),
(10249, 2, 14, 9),
(10249, 2, 51, 40),
(10250, 3, 41, 10),
(10250, 3, 51, 35);

SELECT * FROM Customers
WHERE CustomerName LIKE '[ab]%';

