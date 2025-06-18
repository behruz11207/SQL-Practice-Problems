              --Intermediate Problems

-- 30. Customers with no orders?

There are some customers who have never actually placed an order.
Show these customers.

-- Hint
  
One way of doing this is to use a left join, also known as a left outer
join. However, we only want
those records where the CustomerID in Orders is null.

--Expected Results

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName NVARCHAR(100)
);


CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT NULL,
  OrderDate DATE,
  EmployeeID INT
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, EmployeeID) VALUES
(1, NULL, '2025-05-23', 1),
(2, 5, '2025-01-12', 1),
(3, NULL, '2025-04-03', 2),
(4, 30, '2025-04-18', 3),
(5, 46, '2025-01-22', 4),
(6, 19, '2025-01-28', 4),
(7, NULL, '2025-02-19', 2),
(8, 11, '2025-03-04', 3),
(9, 6, '2025-05-01', 4),
(10, NULL, '2025-06-01', 1),
(11, 22, '2025-04-10',5),
(12, 3, '2025-02-20',5),
(13, NULL, '2025-05-14',4),
(14, 41, '2025-01-15', 6),
(15, NULL, '2025-03-07', 7),
(16, 15, '2025-02-25', 4),
(17, 7, '2025-03-21', 7),
(18, NULl, '2025-05-18', 7),
(19, 35, '2025-01-26', 6),
(20, NULL, '2025-02-14', 5),
(21, 9, '2025-06-10', 6),
(22, NULL, '2025-03-01',7),
(23, 1, '2025-01-11', 4),
(24, NULL, '2025-01-20', 8),
(25, 17, '2025-04-16', 9),
(26, 20, '2025-03-05',10),
(27, 2, '2025-06-05',4),
(28, NULL, '2025-02-03',10),
(29, 12, '2025-03-10',9),
(30, 8, '2025-04-22',5),
(31, NULL, '2025-05-27',6),
(32, 26, '2025-06-11',6),
(33, NULL, '2025-02-07',5),
(34, 31, '2025-01-06',7),
(35, 38, '2025-03-14',8),
(36, 4, '2025-05-30',3),
(37, NULL, '2025-03-17',4),
(38, 21, '2025-04-08',2),
(39, 13, '2025-04-25',5),
(40, 33, '2025-05-13',6),
(41, NULL, '2025-06-16',4),
(42, NULL, '2025-02-02',4),
(43, 10, '2025-03-09',7),
(44, 24, '2025-05-09',9),
(45, 37, '2025-06-12',10),
(46, NULL, '2025-04-05',2),
(47, NULL, '2025-02-18',1),
(48, 48, '2025-01-30',3),
(49, 36, '2025-03-11',4),
(50, NULL, '2025-06-03',10);

INSERT INTO Customers (CustomerID, CustomerName) VALUES
(1, 'Xoliq'),
(2, 'Ali'),
(3, 'Mustafo'),
(4, 'Safia'),
(5, 'Komil'),
(6, 'Malik'),
(7, 'Karim'),
(8, 'Jamila'),
(9, 'Barchin'),
(10, 'Odamzot'),
(11, 'Akmol'),
(12, 'Doston'),
(13, 'Kamron'),
(14, 'Murod'),
(15, 'Komil'),
(16, 'Malik'),
(17, 'Karim'),
(18, 'Jamila'),
(19, 'Barchin'),
(20, 'Odamzot'),
(21, 'Xoliq'),
(22, 'Ali'),
(23, 'Mustafo'),
(24, 'Akmol'),
(25, 'Doston'),
(26, 'Kamron'),
(27, 'Murod'),
(28, 'Anvar'),
(29, 'Islom'),
(30, 'Behruz'),
(31, 'Diyor'),
(32, 'Balocha'),
(33, 'Ezoza'),
(34, 'Malika'),
(35, 'Komil'),
(36, 'Malik'),
(37, 'Karim'),
(38, 'Jamila'),
(39, 'Barchin'),
(40, 'Odamzot'),
(41, 'Xoliq'),
(42, 'Ali'),
(43, 'Mustafo'),
(44, 'Anvar'),
(45, 'Islom'),
(46, 'Behruz'),
(47, 'Akmol'),
(48, 'Doston'),
(49, 'Kamron'),
(50, 'Murod');

-- Show customers who have never placed an order.
-- Use LEFT JOIN to include all customers, even if they have no matching orders.
-- Filter to show only those where OrderID is NULL (no orders).

SELECT c.CustomerName, c.CustomerID AS Customers_CustomerID,
o.OrderID AS Orders_CustomerID FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
