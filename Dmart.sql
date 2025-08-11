create database dmart;
use dmart;
-- her iam Create Two Related Tables 

-- customers table
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
Name VARCHAR(50),
City VARCHAR(50)
);
INSERT INTO Customers VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago');
-- INNER JOIN
SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
-- orders table
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
Product VARCHAR(50),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'),
(103, 1, 'Tablet');
-- LEFT JOIN
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- FULL JOIN
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;














