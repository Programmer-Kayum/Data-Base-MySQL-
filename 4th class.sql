show databases;
use dbms;
show tables;
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


SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE 'B%';

SELECT CustomerID, CustomerName, Address
FROM Customers
WHERE City not like 'London';

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET CustomerName = 'Horn'
WHERE Country = 'UK';


select * from customers
limit 5;

select * from customers
where country ='UK'
limit 2;

alter table customers
add column salary decimal (18,2);

select * from customers;

select min(salary) as  min_value 
from customers;

select max(salary) as  max_value 
from customers;

select min(salary) as Minimum_salary, country
from customers
group by country
limit 1;

select count(salary) as total_number_customers from customers;

select sum(salary) as total_salary from customers;
