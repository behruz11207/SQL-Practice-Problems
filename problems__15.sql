--15.  When was the first order?
Show the date of the first order ever made in the Orders table.

-- Hint
There’s a aggregate function called Min that you need to use for this
problem.

--Expected Results
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID VARCHAR(10),
    OrderDate DATETIME
);


INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(10248, 'VINET', '2014-07-04 08:00:00'),
(10249, 'TOMSP', '2014-07-05 09:15:00'),
(10250, 'HANAR', '2014-07-08 10:20:00'),
(10251, 'VICTE', '2014-07-08 11:10:00'),
(10252, 'SUPRD', '2014-07-09 13:45:00'),
(10253, 'HANAR', '2014-07-10 09:00:00'),
(10254, 'CHOPS', '2014-07-11 14:25:00'),
(10255, 'RICSU', '2014-07-12 15:00:00'),
(10256, 'WELLI', '2014-07-15 16:20:00'),
(10257, 'HILAA', '2014-07-16 17:30:00'),
(10258, 'ERNSH', '2014-07-17 08:10:00'),
(10259, 'CENTC', '2014-07-18 12:00:00'),
(10260, 'OTTIK', '2014-07-19 09:30:00'),
(10261, 'QUEDE', '2014-07-20 10:40:00'),
(10262, 'RATTC', '2014-07-21 11:50:00'),
(10263, 'ERNSH', '2014-07-22 13:00:00'),
(10264, 'FURIB', '2014-07-23 14:10:00'),
(10265, 'VAFFE', '2014-07-24 15:20:00'),
(10266, 'COMMI', '2014-07-25 16:30:00'),
(10267, 'MAGAA', '2014-07-26 17:40:00'),
(10268, 'GROSR', '2014-07-27 08:00:00'),
(10269, 'WHITC', '2014-07-28 09:10:00'),
(10270, 'WARTH', '2014-07-29 10:20:00'),
(10271, 'SPLIR', '2014-07-30 11:30:00'),
(10272, 'RATTC', '2014-08-01 12:40:00'),
(10273, 'QUICK', '2014-08-02 13:50:00'),
(10274, 'VINET', '2014-08-03 14:00:00'),
(10275, 'MAGAA', '2014-08-04 15:10:00'),
(10276, 'TORTU', '2014-08-05 16:20:00'),
(10277, 'MORGK', '2014-08-06 17:30:00'),
(10278, 'BERGS', '2014-08-07 18:40:00');


--It was achieved through first order using the aggregate function MIN.
SELECT  MIN(o.OrderDate) AS FirstOrder
FROM Orders o
