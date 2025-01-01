show databases;
create database DBMS;
use dbms;

-- create  employee table

create table employee(
EmpNo int auto_increment primary key,
EmName varchar(50) not null,
DoB date not null,
Address text,
Gender ENUM('male', 'female') NOT NULL,
Salary decimal(20,2) not null,
DNumber int not null
);

alter table employee
change column Name EmName varchar(50) not null;
 show tables;
 select *from employee;
 
INSERT INTO EMPLOYEE (EmName, DoB, Address, Gender, Salary, DNumber)
VALUES 
('John Doe', '1985-03-15', '123 Elm Street', 'male', 50000.00, 1),
('Jane Smith', '1990-06-22', '456 Oak Avenue', 'female', 60000.00, 2),
('Sam Brown', '1982-11-30', '789 Pine Road', 'male', 70000.00, 1),
('Emily Johnson', '1995-02-17', '101 Maple Street', 'female', 55000.00, 3),
('Michael White', '1988-08-05', '202 Birch Lane', 'male', 45000.00, 2),
('Sarah Lee', '1992-04-10', '303 Cedar Boulevard', 'female', 52000.00, 1),
('David Harris', '1980-09-28', '404 Oak Circle', 'male', 60000.00, 3),
('Olivia Green', '1993-12-19', '505 Pinewood Road', 'female', 48000.00, 2),
('James Wilson', '1987-07-23', '606 Elm Street', 'male', 55000.00, 3),
('Sophia Turner', '1991-05-14', '707 Maple Street', 'female', 49000.00, 1);
 select *from employee;
 
 
 -- i) Display the Age of ‘male’ employees.
 
 
select EmName, (year(curdate())-year(DoB)) as Age from employee where Gender = 'male';
select EmName, (date(curdate())-date(DoB)) as Age from employee where Gender = 'male';
select EmName, (yearweek(curdate())-yearweek(DoB)) as Age from employee where Gender = 'male';
 




use dbms;
CREATE TABLE DEPARTMENT (
    DNumber INT PRIMARY KEY,                -- Unique department number
    Dname VARCHAR(100) NOT NULL,            -- Department name
    ManagerEmpNo INT NOT NULL,              -- Manager's employee number
    ManagerStartDate DATE NOT NULL       -- Manager's start date
);


INSERT INTO DEPARTMENT (DNumber, Dname, ManagerEmpNo, ManagerStartDate)
VALUES 
(1, 'Sales', 1, '2010-05-10'),
(2, 'Marketing', 2, '2015-09-15'),
(3, 'Finance', 3, '2018-01-20'),
(4, 'HR', 4, '2017-03-25'),
(5, 'IT', 5, '2019-07-12'),
(6, 'Research and Development', 6, '2020-02-10'),
(7, 'Operations', 7, '2016-11-05'),
(8, 'Customer Support', 8, '2021-01-15'),
(9, 'Legal', 9, '2014-06-30'),
(10, 'Logistics', 10, '2013-08-22');



select *from department;
select *from employee;


-- ii) Display all employees in Department named ‘Marketing’

select e.EmName, e.Address, e.Salary
from Employee e
join Department d
on e.DNumber = d.DNumber
where DName = 'Marketing';

-- iii) Display the name of the highest salary paid ‘female’ employee.

select EmName , Address, Salary
from employee
where Gender = 'female'
order by salary desc
limit 1;


-- iv) Which employee is oldest manager in company?


SELECT e.EmName, e.DoB, d.ManagerStartDate
FROM EMPLOYEE e
JOIN DEPARTMENT d
ON e.EmpNo = d.ManagerEmpNo
ORDER BY e.DoB ASC
LIMIT 1;



-- v) Display the name of department of the employee ‘SMITH’

SELECT d.Dname
FROM EMPLOYEE e
JOIN DEPARTMENT d
ON e.DNumber = d.DNumber
WHERE e.EmName = 'SMITH';

TRUNCATE TABLE EMPLOYEE;
TRUNCATE TABLE DEPARTMENT;

select *from department;
select *from employee;

