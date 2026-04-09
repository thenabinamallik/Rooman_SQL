-- GizmoMart MySQL Assignment

-- PART 1: DDL
CREATE DATABASE GizmoMart_DB;
USE GizmoMart_DB;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
);

ALTER TABLE Products
ADD Rating DECIMAL(3,1);

-- PART 2: DML
INSERT INTO Products VALUES
(1, 'Wireless Mouse', 'Electronics', 25.50, 150, 4.5),
(2, 'Mechanical Keyboard', 'Electronics', 85.00, 40, 4.8),
(3, 'Desk Lamp', 'Home Office', 30.00, 80, 4.2),
(4, 'Ergonomic Chair', 'Home Office', 250.00, 15, 4.7),
(5, 'Gaming Headset', 'Electronics', 60.00, 90, 3.9),
(6, 'Water Bottle', 'Accessories', 15.00, 300, 4.1),
(7, 'Laptop Stand', 'Home Office', 45.00, 60, 4.6),
(8, 'USB-C Hub', 'Electronics', 40.00, 120, 4.0);

UPDATE Products
SET Price = 50.00
WHERE ProductName = 'Gaming Headset';

DELETE FROM Products
WHERE ProductName = 'Water Bottle';

-- PART 3: DQL
SELECT * FROM Products;
SELECT ProductName, Price FROM Products;
SELECT * FROM Products WHERE Category = 'Electronics';
SELECT * FROM Products WHERE Price > 50;

-- PART 4: CLAUSES
SELECT * FROM Products WHERE Category = 'Electronics' AND Price < 70;
SELECT * FROM Products WHERE Price BETWEEN 30 AND 100;
SELECT * FROM Products WHERE ProductName LIKE 'L%';
SELECT * FROM Products WHERE ProductName LIKE '%Laptop%';
SELECT * FROM Products WHERE Category != 'Electronics';
SELECT * FROM Products ORDER BY Price ASC;
SELECT * FROM Products ORDER BY Rating DESC;
SELECT * FROM Products ORDER BY Category, Price;
SELECT * FROM Products ORDER BY Price DESC LIMIT 3;
SELECT * FROM Products ORDER BY Price ASC LIMIT 2;
SELECT * FROM Products WHERE Rating IN (4.5, 4.7, 4.8);
SELECT * FROM Products WHERE StockQuantity BETWEEN 50 AND 200;
SELECT * FROM Products WHERE StockQuantity NOT BETWEEN 50 AND 200;

-- PART 5: AGGREGATES
SELECT COUNT(*) AS TotalProducts FROM Products;
SELECT AVG(Price) AS AvgPrice FROM Products;
SELECT MIN(Price) AS MinPrice FROM Products;
SELECT MAX(Price) AS MaxPrice FROM Products;
SELECT SUM(StockQuantity) AS TotalStock FROM Products;

-- PART 6: GROUP BY & HAVING
SELECT Category, COUNT(*) AS ProductCount FROM Products GROUP BY Category;
SELECT Category, SUM(StockQuantity) AS TotalStock FROM Products GROUP BY Category;
SELECT Category, AVG(Rating) AS AvgRating FROM Products GROUP BY Category;
SELECT Category, AVG(Price) AS AvgPrice FROM Products GROUP BY Category HAVING AVG(Price) > 50;
SELECT Category, COUNT(*) AS ProductCount FROM Products GROUP BY Category HAVING COUNT(*) > 2;
