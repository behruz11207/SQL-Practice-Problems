-- 5. Orders placed by specific EmployeeID
Show all the orders placed by a specific employee. The EmployeeID for
this Employee (Steven Buchanan) is 5.

-- Hint
The EmployeeID is an integer field, and not a string field. So, the value
“5” does not need to be surrounded by single quotes in the where
clause.

--Expected Results
CREATE TABLE Orders (
EmployeeID INT, 
OrderID INT Primary Key,
OrdarDate VARCHAR(100))

INSERT INTO Orders (EmployeeID, OrderID, OrdarDate) VALUES
(1, 10248, '2014-07-04 08:00:00.000'),
(2, 10254, '2014-07-11 02:00:00.000'),
(3, 10269, '2014-07-31 00:00:00.000'),
(4, 10297, '2014-09-04 21:00:00.000'),
(5, 10320, '2014-10-03 12:00:00.000'),
(6, 10333, '2014-10-18 18:00:00.000'),
(7, 10358, '2014-11-20 05:00:00.000'),
(8, 10359, '2014-11-21 14:00:00.000'),
(9, 10372, '2014-12-04 10:00:00.000'),
(10, 10378, '2014-12-10 00:00:00.000');

--Need to EmployeeID in 5
SELECT o.OrderID, o.OrdarDate FROM Orders o
WHERE o.EmployeeID = 5
