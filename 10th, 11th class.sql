use edge;
CREATE TABLE categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50),
    Description TEXT
);


INSERT INTO categories (CategoryID, CategoryName, Description) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');


select * from categories;

use edge;
CREATE TABLE categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50),
    Description TEXT
);


INSERT INTO categories (CategoryID, CategoryName, Description) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');


select * from categories;

ALTER TABLE categories
ADD location VARCHAR(50) unique;

ALTER TABLE categories
ADD CONSTRAINT unique_location UNIQUE (location);


UPDATE categories SET location = 'Warehouse A' WHERE CategoryID = 1 ;
UPDATE categories SET location = 'Dhaka A' WHERE CategoryID = 2;
UPDATE categories SET location = 'Dhaka A' WHERE CategoryID = 3;


ALTER TABLE categories
MODIFY COLUMN CategoryName VARCHAR(50) UNIQUE;

ALTER TABLE categories
DROP COLUMN CategoryName;

ALTER TABLE categories
DROP COLUMN location;

 
 
 
 -- ******************* for all *******************
 create table Orders(
  orderID int not null,
  OrderNumber int not null,
  personId int,
  primary key (orderId),
  constraint fk_personOrder foreign key (personId)
  references persons(personId)
 );
 
 -- *********MySQL**********
 
  create table Orders(
  orderID int not null,
  OrderNumber int not null,
  personId int,
  primary key (orderId),
 foreign key (personId)
  references persons(personId)
 );
 
  alter table orders
  add foreign key (personId) references persons(personID);
  
alter table orders
add  constraint fk_personOrder 
foreign key(personID) references persons(personID);

alter table orders
drop foreign key  fk_personOrder ;


alter table orders
drop constraint fk_personOrder;


 -- ******************* for all *******************
 create table Persons(
  ID int not null,
 LastName varchar(50),
  FirstName varchar(50),
  Age int,
  cisty varchar(255),
  constraint CHK_Persons check(Age>=18 AND City = "Dinajpur")
 );


 -- ***** mySql ****
 create table Persons(
  ID int not null,
 LastName varchar(50),
  FirstName varchar(50),
  Age int,
  City varchar(255),
check(Age>=18 AND City = "Dinajpur")
 );
 
 alter table Persons add check(Age >= 18);
 alter table persons add constraint CHK_Persons check (Age>=18 AND City = "Dinajpur");
 alter table persons drop check  CHK_PersonAge;
 
 
 
 