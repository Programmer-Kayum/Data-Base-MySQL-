show databases;
use dbms;
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

select * from orders;

select min(productID) as minimum_product from orders;
select max(productID) as maximum_product from orders;

select productID , quantity
from orders
order by quantity asc
limit 1;

select productID , quantity
from orders
order by quantity desc
limit 1;



select * from orders limit 4;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM Orders
GROUP BY ProductID;



