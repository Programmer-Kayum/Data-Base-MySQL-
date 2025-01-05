show databases;
create database class4;
use class4;

create table customers(
id int auto_increment primary key,
name varchar(50),
age int,
address varchar(50),
salary decimal(18,0)
);

ALTER TABLE customers
CHANGE name Cust_Name VARCHAR(50);

select *from customers;

INSERT INTO customers (Cust_Name, age, address, salary)
VALUES ('Kayum', 25, 'dinajpur', 5000.00);

INSERT INTO customers (Cust_Name, age, address, salary)
VALUES 
('Kayum', 25, 'Dinajpur', 5000.00),
('Resma', 24, 'Rangpur', 5500.00),
('Sathy', 26, 'Dhaka', 6000.00),
('Arif', 27, 'Chittagong', 5200.00),
('Nusrat', 23, 'Sylhet', 5800.00),
('Jahid', 28, 'Rajshahi', 7000.00),
('Anika', 22, 'Khulna', 4800.00),
('Sajid', 29, 'Barisal', 6500.00),
('Tamim', 24, 'Gazipur', 4700.00),
('Nabila', 25, 'Mymensingh', 5100.00);


select *from customers where age >25 and salary>2000;

SELECT * FROM customers 
WHERE Address = 'Dinajpur' 
AND (Cust_Name LIKE 'k%' OR Cust_Name LIKE 'n%');


SELECT * FROM customers 
WHERE Address = 'rangpur'
AND (Cust_Name LIKE 'R_s%' OR Cust_Name LIKE 'S%');

select * from customers
where not address ='Lalmonirhat';

select * from customers
where not salary < 4000;

select * from customers
where not salary > 2000;

select * from customers
where Cust_name not like 'K%';

select * from customers 
where address not in ('Dhaka', 'Dinajpur', 'Rangpur');

select * from customers
where  not id > 2;

select * from customers
where  not id < 5;

update customers
set Cust_Name = 'Salma'
where address ='Dhaka';

select * from customers;

 update customers
 set Address = 'Lalmonirhat', Cust_Name = 'SSSSS'
 where id = 2;

 
