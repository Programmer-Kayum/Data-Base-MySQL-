show databases;
create database dbms2;
use dbms2;
create table employee(
emp_id int auto_increment primary key not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
salary decimal(50,2) not null,
joining_date date not null,
department varchar(50) not null
);

INSERT INTO employee (first_name, last_name, salary, joining_date, department)
VALUES 
('John', 'Doe', 50000, '2023-01-15', 'Finance'),
('Jane', 'Smith', 60000, '2022-11-01', 'HR'),
('Michael', 'Johnson', 75000, '2021-05-23', 'IT'),
('Emily', 'Davis', 55000, '2023-03-12', 'Marketing'),
('Chris', 'Brown', 72000, '2020-08-18', 'Operations'),
('Anna', 'Garcia', 68000, '2022-09-30', 'Finance'),
('David', 'Martinez', 48000, '2023-06-10', 'Customer Support'),
('Sophia', 'Hernandez', 59000, '2021-12-15', 'HR'),
('James', 'Lopez', 83000, '2019-04-08', 'IT'),
('Olivia', 'Wilson', 63000, '2020-02-20', 'Sales');

select *from employee;
CREATE TABLE reward (
    reward_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each reward entry
    emp_ref_id INT NOT NULL,                  -- Reference to the employee table
    date_reward DATE NOT NULL,                -- Date the reward was given
    amount DECIMAL(10, 2) NOT NULL,           -- Reward amount
    FOREIGN KEY (emp_ref_id) REFERENCES employee(emp_id) -- Foreign key constraint
);

INSERT INTO reward (emp_ref_id, date_reward, amount)
VALUES
(1, '2024-01-01', 500.00),
(2, '2023-12-15', 300.00),
(3, '2023-11-20', 700.00),
(4, '2023-10-05', 450.00),
(5, '2023-09-25', 800.00),
(6, '2023-08-30', 600.00),
(7, '2023-07-14', 350.00),
(8, '2023-06-10', 400.00),
(9, '2023-05-18', 900.00),
(10, '2023-04-28', 550.00);


select *from reward;

select lower(last_name) as lower_last_name from employee;
select  first_name as Employee_name from employee;
select *from employee order by salary desc, first_name asc;
select *from employee where salary between 5000 and 60000;

SELECT e.first_name, r.amount FROM employee e
RIGHT JOIN reward r  
ON e.emp_id = r.emp_ref_id;

