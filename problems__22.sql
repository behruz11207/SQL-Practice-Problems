                --Intermediate Problems

--22. Products that need reordering

What products do we have in our inventory that should be reordered?
For now, just use the fields UnitsInStock and ReorderLevel, where
UnitsInStock is less than the ReorderLevel, ignoring the fields
UnitsOnOrder and Discontinued.
Order the results by ProductID

--Hint
  
We want to show all fields where the UnitsInStock is less than the
ReorderLevel. So in the Where clause, use the following:
UnitsInStock < ReorderLevel

--Expected Results

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    UnitsInStock INT,
    ReorderLevel INT
);


INSERT INTO Products (ProductID, ProductName, UnitsInStock, ReorderLevel) VALUES
(1, 'Chang', 17, 25),
(2, 'Aniseed Syrup', 13, 25),
(3, 'Queso Cabrales', 22, 30),
(4, 'Sir Rodney''s Scones', 3, 5),
(5, 'Nord-Ost Matjeshering', 10, 15),
(6, 'Gorgonzola Telino', 0, 20),
(7, 'Mascarpone Fabioli', 9, 25),
(8, 'Gravad lax', 11, 25),
(9, 'Ipoh Coffee', 17, 25),
(10, 'Rogede sild', 5, 15),
(11, 'Chocolade', 15, 25),
(12, 'Maxilaku', 10, 15),
(13, 'Gnocchi di nonna Alice', 21, 30),
(14, 'Wimmers gute Semmelknödel', 22, 30),
(15, 'Louisiana Hot Spiced Okra', 4, 20),
(16, 'Scottish Longbreads', 6, 15),
(17, 'Outback Lager', 15, 30),
(18, 'Longlife Tofu', 4, 5);


-- List products that need reordering based on stock level, ordered by ProductID
SELECT p.ProductID, p.ProductName, p.UnitsInStock, p.ReorderLevel
FROM Products p
WHERE p.UnitsInStock < p.ReorderLevel
ORDER BY p.ProductID
