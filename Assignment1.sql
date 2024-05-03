CREATE DATABASE OrderProcessing
USE OrderProcessing;

--Creating SalesMan Table
CREATE TABLE SalesMan
(
SalesmanId INT,
SalesmanName VARCHAR(255),
Commission DECIMAL(10,2),
City  VARCHAR(255),
Age INT
)



INSERT INTO SalesMan
values
(101, 'Joe', 50, 'California', 17),
(102, 'Simon', 75, 'Texas', 25),
(103, 'Jessie', 105, 'Florida', 35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersey', 30)

SELECT * FROM SalesMan

--Creating a CustomerTable
CREATE TABLE Customer
(
SalesmanId INT,
CustomerId INT,
CustomerName VARCHAR(255),
PurchaseAmount INT
)
INSERT INTO Customer
VALUES
(101, 2345, 'Andrew', 550),
(103, 1575, 'Lucky', 4500),
(104, 2345, 'Andrew', 4000),
(107, 3747, 'Remona', 2700),
(110, 4004, 'Julia', 4545)

SELECT * FROM Customer

--Creating an Order Table
CREATE TABLE Orders
(
OrderId INT,
CustomerId INT,
SalesmanId INT,
OrderDate DATE,
Amount MONEY
)
INSERT INTO Orders
VALUES
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)

SELECT * FROM Orders

/*
Tasks to be Performed:
1. Insert a new record in your Orders table.*/
--    Add default constraint for City column in Salesman table. 
--    Add Foreign key constraint for SalesmanId column in Customer table.
--    Add not null constraint in Customer_name column for the Customer table
ALTER TABLE Customer
ADD CONSTRAINT FK_SalesmanID FOREIGN KEY (SalesmanID) REFERENCES Salesman(SalesmanID);
--added not null constraint on customerName column 
ALTER TABLE Customer
ALTER COLUMN CustomerName VARCHAR(255) NOT NULL

---3. Fetch the data where the Customer�s name is ending with �N� also get the purchase
----  amount value greater than 500.
----  tables, and the other result containing SalesmanId with duplicates from two tables.
---- Orderdate, Salesman Name, Customer Name, Commission, and City which has the range of Purchase Amount between 500 to 1500.