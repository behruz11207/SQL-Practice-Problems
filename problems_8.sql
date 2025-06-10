-- 8. Orders shipping to France or Belgium
Looking at the Orders table, there’s a field called ShipCountry. Write a
query that shows the OrderID, CustomerID, and ShipCountry for the
orders where the ShipCountry is either France or Belgium.

-- Hint
In the where clause, instead of combining the filters with an 
“and” use the “or”.

-- Expected Results
  
CREATE TABLE Orderss (
OrderID INT Primary Key,
CustomerID NVARCHAR(5),
ShipCountry VARCHAR(50))

INSERT INTO Orderss (OrderID, CustomerID, ShipCountry) VALUES
(10248, 'VINET', 'France'),
(10251, 'VICTE', 'France'), 
(10252, 'SUPRD', 'Belgium'),
(10265, 'BLONP', 'France'),
(10274 ,'VINET','France'),
(10295, 'VINET', 'France'),
(10297, 'BLONP', 'France'),
(10302, 'SUPRD','Belgium'), 
(10311, 'DUMON ', 'France'),
(10331, 'BLONP', 'France'),
(10334, 'VICTE ', 'France'),
(10340, 'BLONP', 'France'),
(10350, 'LAMAI', 'France'),
(10358, 'LAMAI', 'France')


-- The ShipCountry is either France or Belgium.
SELECT * FROM Orderss o
WHERE o.ShipCountry = 'France' OR o.ShipCountry = 'Belgium'
