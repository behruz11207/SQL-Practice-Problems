          --Intermediate Problems

--28. High freight charges - last year?

We are continuing to work on high freight charges. We now want to get
the three ship countries with the highest average freight charges. But
instead of filtering for a particular year, we want to use the last 12
months of order data, using as the end date the last OrderDate in Orders.

--Hint
  
First, get the last OrderDate in Orders. Write a simple select statement
to get the highest value in the OrderDate field using the Max aggregate
function . Now you need to get the date 1 year before the last order date. Create a
simple select statement that subtracts 1 year from the last order date
You can use the DateAdd function for this. Note that within DateAdd,
you can use the subquery you created above. Look online for some
examples if you need to.
 
--Expected Results
  
CREATE TABLE Orders (
    OrderID INT,
    ShipCountry VARCHAR(50),
    Freight DECIMAL(10,2),
    OrderDate DATETIME
);


INSERT INTO Orders (OrderID, ShipCountry, Freight, OrderDate) VALUES
(1, 'Germany', 110.50, '2015-01-15'),
(2, 'USA', 95.00, '2015-02-20'),
(3, 'UK', 75.25, '2014-12-30'),
(4, 'Austria', 184.78, '2015-03-10'),
(5, 'USA', 85.40, '2016-01-01'),
(6, 'France', 50.00, '2015-06-12'),
(7, 'UK', 80.00, '2015-07-07'),
(8, 'Brazil', 65.30, '2014-11-10'),
(9, 'Ireland', 145.01, '2015-08-09'),
(10, 'USA', 100.00, '2015-08-10'),
(11, 'France', 45.00, '2015-09-21'),
(12, 'UK', 78.80, '2016-01-10'),
(13, 'Brazil', 55.90, '2015-10-01'),
(14, 'Germany', 112.00, '2015-11-02'),
(15, 'France', 60.00, '2013-12-31'),
(16, 'USA', 102.00, '2015-12-12'),
(17, 'Brazil', 70.10, '2014-02-28'),
(18, 'UK', 82.50, '2015-01-10'),
(19, 'Germany', 98.75, '2015-04-05'),
(20, 'USA', 112.87, '2015-05-22'),
(21, 'Spain', 120.40, '2015-06-06'),
(22, 'Mexico', 130.00, '2015-07-17'),
(23, 'Canada', 140.25, '2015-08-28'),
(24, 'Italy', 150.30, '2015-09-19'),
(25, 'USA', 160.75, '2015-10-11'),
(26, 'Germany', 170.00, '2015-11-22'),
(27, 'UK', 180.00, '2015-12-01'),
(28, 'France', 190.50, '2015-12-15'),
(29, 'USA', 200.00, '2015-03-30'),
(30, 'Brazil', 210.75, '2015-02-28'),
(31, 'Ireland', 220.10, '2015-01-05'),
(32, 'Austria', 230.20, '2015-04-04'),
(33, 'Spain', 240.00, '2015-05-05'),
(34, 'Germany', 250.00, '2015-06-06'),
(35, 'France', 260.00, '2015-07-07'),
(36, 'UK', 270.00, '2015-08-08'),
(37, 'USA', 280.00, '2015-09-09'),
(38, 'Italy', 290.00, '2015-10-10'),
(39, 'Mexico', 300.00, '2015-11-11'),
(40, 'Canada', 310.00, '2015-12-12');


-- Select the top 3 ship countries with the highest average freight charges
-- using only orders from the last 12 months based on the latest OrderDate in the table.

SELECT TOP 3 o.ShipCountry, AVG(o.Freight) AS AverageFreight
FROM Orders o
WHERE o.OrderDate >= DATEADD(YEAR, -1,(SELECT MAX(o.OrderDate) FROM Ordeeeers o))
GROUP BY o.ShipCountry
ORDER BY AverageFreight DESC
