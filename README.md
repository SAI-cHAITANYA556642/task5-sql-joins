# Task 5 - SQL Joins

 This task shows how to use different SQL join operations, including "INNER JOIN","LEFT JOIN", "RIGHT JOIN", and "FULL JOIN".<br>
 We will use two related tables:""Customers"" and ""Orders"".<br>
 
## Overview
We create two tables that have a one-to-many relationship:<br>
- Customers contains customer details.<br>
- ""Orders"" includes order details linked to customers by "CustomerID".<br>

## Tools Used
>>MySQL Workbench
##Version Control System
git

 then run join queries to see how different joins return results.<br> 

## Table Structures<br>
sql<br>
CREATE TABLE Customers ( <br>
    CustomerID INT PRIMARY KEY,<br>
    Name VARCHAR(50),<br>
    City VARCHAR(50)<br>
);<br>

CREATE TABLE Orders ( <br>
    OrderID INT PRIMARY KEY,<br>
    CustomerID INT,<br>
    Product VARCHAR(50),<br>
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) <br>
);<br>

## Key Concepts: Joins, Relationships

>> A JOIN in SQL is a clause that combines rows from two or more tables. It does this based on a related column between them.<br>
Purpose: To get data that is spread across multiple related tables in one place.<br>
##Types of Joins  
-->INNER JOIN, Returns only rows with matching values in both tables.<br>
-->LEFT JOIN, Returns all rows from the left table and matching rows from the right table; it returns NULL if there is no match.<br>
-->RIGHT JOIN, Returns all rows from the right table and matching rows from the left table.<br> 
-->FULL OUTER JOIN, Returns all rows from both tables; it includes matches and unmatched rows.<br> 
>>Relationships<br>
In databases, a relationship is a logical connection between two tables. This connection is based on matching data in related columns.<br>  
Relationships help organize data, reduce redundancy, and ensure data integrity.<br>
##Types of Relationships in Databases
1) One-to-One [1:1]<br>
One record in Table A is linked to exactly one record in Table B.<br>
2) One-to-Many [1:N] [Most common]<br>
One record in Table A can connect to several records in Table B.<br>
3) Many-to-Many [M:N]<br>
Many records in Table A connect to many records in Table B.<br>
