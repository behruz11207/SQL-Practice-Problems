          --Intermediate Problems
-- 25. High freight charges?

Some of the countries we ship to have very high freight charges. We would
like to investigate some more shipping options for our customers, to be
able to offer them lower freight charges. Return the three ship countries
with the highest average freight overall, in descending order by average freight.


-- Hint
We will be using the Orders table, and using the Freight and ShipCountry
fields. 
You will want to group by ShipCountry, and use the Avg function. Do not
worry about showing only the top 3 rows until you have the grouping
and average freight set up.

  
--Expected Results
  
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ShipCountry VARCHAR(50),
    Freight DECIMAL(10, 2)
);


INSERT INTO Orders (OrderID, ShipCountry, Freight) VALUES
(1, 'Germany', 110.50),
(2, 'USA', 95.00),
(3, 'UK', 75.25),
(4, 'Austria', 184.78),
(5, 'USA', 85.40),
(6, 'France', 50.00),
(7, 'UK', 80.00),
(8, 'Brazil', 65.30),
(9, 'Ireland', 145.01),
(10, 'USA', 100.00),
(11, 'France', 45.00),
(12, 'UK', 78.80),
(13, 'Brazil', 55.90),
(14, 'Germany', 112.00),
(15, 'France', 60.00),
(16, 'USA', 102.00),
(17, 'Brazil', 70.10),
(18, 'UK', 82.50),
(19, 'Germany', 98.75),
(20, 'USA', 112.87);

-- Return top 3 ship countries with the highest average freight
-- Group by ShipCountry and order by AVG(Freight) descending

SELECT TOP 3 o.ShipCountry, AVG(o.Freight) AS AverageFreight
FROM Orders o
GROUP BY o.ShipCountry
ORDER BY AverageFreight DESC
