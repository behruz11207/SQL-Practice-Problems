-- 9. Orders shipping to any country in Latin America? 
Now, instead of just wanting to return all the orders from France of Belgium, we want to show all the orders from any Latin American
country. But we don’t have a list of Latin American countries in a table in the Northwind database. So, we’re going to just use this list of Latin
American countries that happen to be in the Orders table:
Brazil
Mexico
Argentina
Venezuela
It doesn’t make sense to use multiple Or statements anymore, it would get too convoluted. Use the In statement.

-- Hint
Here’s an example of the previous questions, about orders shipping to France or Belgium, done as an In statement instead of using multiple
Where clauses.
Select OrderID ,CustomerID ,OrderDate ,ShipCountry From Orders
where ShipCountry in ('France','Belgium')

-- Expected Results
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID VARCHAR(10),
    ShipCountry VARCHAR(50)
);

INSERT INTO Orders (OrderID, CustomerID, ShipCountry) VALUES
(10250, 'HANAR', 'Brazil'),
(10253, 'HANAR', 'Brazil'),
(10256, 'WELLI', 'Brazil'),
(10257, 'HILAA', 'Venezuela'),
(10259, 'CENTC', 'Mexico'),
(10261, 'QUEDE', 'Brazil'),
(10268, 'GROSR', 'Venezuela'),
(10276, 'TORTU', 'Mexico'),
(10283, 'LILAS', 'Venezuela'),
(10287, 'RICAR', 'Brazil'),
(10997, 'LILAS', 'Venezuela'),
(11014, 'LINOD', 'Venezuela'),
(11019, 'RANCH', 'Argentina'),
(11022, 'HANAR', 'Brazil'),
(11039, 'LINOD', 'Venezuela'),
(11042, 'COMMI', 'Brazil'),
(11049, 'GOURL', 'Brazil'),
(11052, 'HANAR', 'Brazil'),
(11054, 'CACTU', 'Argentina'),
(11055, 'HILAA', 'Venezuela'),
(11059, 'RICAR', 'Brazil'),
(11065, 'LILAS', 'Venezuela'),
(11068, 'QUEEN', 'Brazil'),
(11069, 'TORTU', 'Mexico'),
(11071, 'LILAS', 'Venezuela'),
(11073, 'PERIC', 'Mexico');


--We need to country and we should to use 'in'
SELECT * FROM Orders os
WHERE os.ShipCountry in ('Brazil','Mexico','Argentina','Venezuela')
ORDER BY os.ShipCountry;
