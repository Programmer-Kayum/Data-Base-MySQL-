show databases;
create database DB;
use DB;
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address TEXT,
    city VARCHAR(50)
);
INSERT INTO student (first_name, last_name, address, city) 
VALUES 
('John', 'Doe', '123 Maple Street', 'New York'),
('Jane', 'Smith', '456 Oak Avenue', 'Los Angeles'),
('Michael', 'Johnson', '789 Pine Road', 'Chicago'),
('Emily', 'Davis', '101 Elm Street', 'Houston'),
('Daniel', 'Brown', '202 Birch Lane', 'Phoenix');

select*from student;

alter table student
drop column email;
select *from student;

alter table student
add birthofDate date;
select *from student;


alter table student
modify column birthofDate year;
select *from student;

alter table student
drop column birthofDate;
select *from student;

select distinct address from student;
select count(distinct address) from student;