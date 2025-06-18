            --Intermediate Problems

-- 29. Inventory list?
  
We are doing inventory, and need to show information like the below, for
all orders. Sort by OrderID and Product ID.

-- Hint
  
You will need to do a join between 4 tables, displaying only those fields
that are necessary

-- Expected Results
CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  LastName NVARCHAR(50)
);


CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName NVARCHAR(100)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  EmployeeID INT,
  OrderDate DATE
);


CREATE TABLE OrderDetails (
  OrderID INT,
  ProductID INT,
  Quantity INT
);


INSERT INTO Employees (EmployeeID, LastName) VALUES
(1, 'West'),
(2, 'Duncan'),
(3, 'Meyer'),
(4, 'Hines'),
(5, 'Griffith'),
(6, 'Knight'),
(7, 'Greer'),
(8, 'Frye'),
(9, 'Lambert'),
(10, 'Anderson');


INSERT INTO Products (ProductID, ProductName) VALUES
(1, 'Base'),
(2, 'There'),
(3, 'Chance'),
(4, 'Fly'),
(5, 'Ready'),
(6, 'Trial'),
(7, 'Above'),
(8, 'Race'),
(9, 'Sign'),
(10, 'Science'),
(11, 'Design'),
(12, 'Red'),
(13, 'Effort'),
(14, 'Low'),
(15, 'Suddenly'),
(16, 'Believe'),
(17, 'Everything'),
(18, 'Couple'),
(19, 'Anything'),
(20, 'Season');

INSERT INTO Orders (OrderID, EmployeeID, OrderDate) VALUES
(1, 10, '2025-04-16'),
(2, 7, '2025-01-25'),
(3, 9, '2025-03-13'),
(4, 3, '2025-01-02'),
(5, 2, '2024-11-30'),
(6, 3, '2024-12-19'),
(7, 5, '2024-10-21'),
(8, 10, '2024-10-10'),
(9, 6, '2024-10-14'),
(10, 5, '2025-01-25'),
(11, 1, '2024-09-04'),
(12, 7, '2025-02-18'),
(13, 2, '2024-08-28'),
(14, 5, '2025-05-01'),
(15, 2, '2024-07-18'),
(16, 3, '2024-06-24'),
(17, 2, '2024-09-21'),
(18, 1, '2024-06-19'),
(19, 1, '2024-07-05'),
(20, 10, '2024-11-11'),
(21, 4, '2025-01-07'),
(22, 2, '2024-06-30'),
(23, 5, '2025-04-18'),
(24, 10, '2024-11-10'),
(25, 9, '2025-02-28'),
(26, 2, '2024-09-19'),
(27, 3, '2024-11-04'),
(28, 3, '2024-11-27'),
(29, 7, '2025-05-25'),
(30, 4, '2025-05-15'),
(31, 4, '2024-06-18'),
(32, 4, '2025-02-05'),
(33, 7, '2025-01-19'),
(34, 2, '2024-08-22'),
(35, 6, '2024-07-10'),
(36, 9, '2025-05-08'),
(37, 6, '2024-10-12'),
(38, 3, '2025-06-04'),
(39, 3, '2025-05-10'),
(40, 6, '2024-07-25'),
(41, 2, '2024-06-22'),
(42, 7, '2024-10-06'),
(43, 10, '2024-09-24'),
(44, 10, '2025-05-30'),
(45, 3, '2025-03-02'),
(46, 6, '2024-08-20'),
(47, 2, '2025-01-27'),
(48, 5, '2025-04-06'),
(49, 9, '2025-04-22'),
(50, 9, '2024-07-08');

INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 12, 4),
(1, 2, 14),
(2, 11, 20),
(2, 1, 7),
(3, 11, 16),
(3, 9, 12),
(4, 14, 17),
(4, 5, 14),
(5, 20, 18),
(6, 19, 6),
(7, 10, 1),
(8, 6, 3),
(9, 5, 18),
(10, 9, 5),
(10, 9, 17),
(10, 10, 2),
(11, 19, 12),
(12, 7, 5),
(12, 17, 12),
(13, 14, 11),
(14, 12, 8),
(14, 9, 8),
(15, 10, 5),
(15, 3, 4),
(16, 8, 10),
(16, 6, 11),
(17, 20, 13),
(18, 2, 1),
(18, 13, 18),
(18, 17, 1),
(19, 9, 5),
(19, 8, 10),
(19, 9, 14),
(20, 17, 19),
(20, 8, 3),
(20, 6, 20),
(21, 17, 5),
(21, 2, 6),
(22, 4, 1),
(23, 1, 6),
(24, 5, 14),
(25, 19, 16),
(25, 7, 4),
(26, 15, 14),
(26, 4, 9),
(27, 16, 12),
(28, 3, 14),
(28, 16, 15),
(28, 12, 8),
(29, 15, 15),
(29, 19, 12),
(29, 14, 13),
(30, 4, 19),
(31, 3, 8),
(31, 14, 9),
(32, 5, 3),
(32, 14, 15),
(33, 16, 1),
(33, 15, 3),
(33, 9, 6),
(34, 13, 5),
(35, 8, 6),
(35, 16, 17),
(35, 1, 14),
(36, 10, 18),
(36, 13, 16),
(37, 20, 16),
(38, 9, 18),
(38, 11, 8),
(39, 5, 1),
(39, 19, 11),
(40, 8, 18),
(40, 9, 2);

-- Show each order's employee, product, and quantity details.
-- Join Employees, Orders, OrderDetails, and Products tables.
-- Sort the result by order date and product ID.

SELECT e.EmployeeID, e.LastName, o.OrderID, p.ProductName, od.Quantity
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
ORDER BY o.OrderDate, p.ProductID
