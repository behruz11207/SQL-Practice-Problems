-- 6. Suppliers and ContactTitles
In the Suppliers table, show the SupplierID, ContactName, and
ContactTitle for those Suppliers whose ContactTitle is not Marketing Manager.

-- Hint
To learn how to do the “not” , you can search online for SQL
comparison operators.

--Expected Results
CREATE TABLE Suppliers (
SupplierID INT Primary Key,
ContactName VARCHAR(100),
ContactTitle VARCHAR(100))

INSERT INTO Suppliers (SupplierID, ContactName, ContactTitle) VALUES
(1, 'Charlotte Cooper', 'Purchasing Manager'),
(2, 'Shelley Burke', 'Order Administrator'),
(3, 'Regina Murphy', 'Sales Representative'),
(4, 'Antonio del Valle Saavedra', 'Export Administrator'),
(5, 'Mayumi Ohno', 'Marketing Representative'),
(6, 'Peter Wilson', 'Sales Representative'),
(7, 'Lars Peterson', 'Sales Agent'),
(8, 'Petra Winkler', 'Sales Manager'),
(9, 'Martin Bein', 'International Marketing Mgr'),
(10, 'Sven Petersen', 'Coordinator Foreign Markets')


--ContactTitle is not Marketing Manager
SELECT * FROM Suppliers s
WHERE s.ContactTitle != 'Marketing Manager'
