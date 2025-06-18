              --Intermediate Problems
-- 23. Products that need reordering, continued

Now we need to incorporate these fields—UnitsInStock, UnitsOnOrder,
ReorderLevel, Discontinued—into our calculation. We’ll define
“products that need reordering” with the following:
UnitsInStock plus UnitsOnOrder are less than or equal to
ReorderLevel The Discontinued flag is false (0).

-- Hint
For the first part of the Where clause, you should have something like
this:
        UnitsInStock + UnitsOnOrder <= ReorderLevel

-- Expected Results
  
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued BIT 
);


INSERT INTO Products (ProductID, ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
(1, 'Chai', 39, 0, 10, 0),
(2, 'Chang', 17, 10, 25, 0),
(3, 'Aniseed Syrup', 13, 5, 25, 0),
(4, 'Chef Anton''s Cajun Seasoning', 53, 0, 0, 1),
(5, 'Chef Anton''s Gumbo Mix', 0, 0, 0, 1),
(6, 'Grandma''s Boysenberry Spread', 120, 0, 25, 0),
(7, 'Uncle Bob''s Organic Dried Pears', 15, 0, 10, 0),
(8, 'Northwoods Cranberry Sauce', 6, 10, 20, 0),
(9, 'Mishi Kobe Niku', 29, 5, 30, 0),
(10, 'Ikura', 31, 0, 20, 0),
(11, 'Queso Cabrales', 22, 7, 30, 0),
(12, 'Queso Manchego La Pastora', 86, 0, 0, 0),
(13, 'Konbu', 24, 0, 5, 0),
(14, 'Tofu', 35, 0, 20, 1),
(15, 'Genen Shouyu', 39, 0, 25, 0),
(16, 'Pavlova', 29, 10, 40, 0),
(17, 'Alice Mutton', 0, 20, 25, 0),
(18, 'Carnarvon Tigers', 42, 0, 30, 0),
(19, 'Teatime Chocolate Biscuits', 25, 0, 5, 0),
(20, 'Sir Rodney''s Marmalade', 40, 0, 20, 0),
(21, 'Sir Rodney''s Scones', 3, 0, 5, 0),
(22, 'Gustaf''s Knäckebröd', 104, 0, 25, 0),
(23, 'Tunnbröd', 61, 0, 25, 0),
(24, 'Guaraná Fantástica', 20, 0, 30, 0),
(25, 'NuNuCa Nuß-Nougat-Creme', 76, 0, 30, 0),
(26, 'Gumbär Gummibärchen', 15, 5, 25, 0),
(27, 'Schoggi Schokolade', 49, 0, 30, 0),
(28, 'Rössle Sauerkraut', 26, 0, 15, 0),
(29, 'Thüringer Rostbratwurst', 0, 0, 15, 0),
(30, 'Nord-Ost Matjeshering', 10, 0, 15, 0),
(31, 'Gorgonzola Telino', 0, 10, 20, 0),
(32, 'Mascarpone Fabioli', 9, 10, 25, 0),
(33, 'Geitost', 112, 0, 20, 0),
(34, 'Sasquatch Ale', 111, 0, 15, 0),
(35, 'Steeleye Stout', 20, 0, 30, 1),
(36, 'Inlagd Sill', 112, 0, 30, 0),
(37, 'Gravad lax', 11, 5, 25, 0),
(38, 'Côte de Blaye', 17, 0, 30, 0),
(39, 'Chartreuse verte', 69, 0, 15, 0),
(40, 'Outback Lager ', 15, 10, 30, 0);


-- List products that need reordering (not discontinued)
-- Condition: (UnitsInStock + UnitsOnOrder) <= ReorderLevel

SELECT p.ProductID, p.ProductName, p.UnitsInStock,
p.UnitsOnOrder, p.ReorderLevel, p.Discontinued
FROM Prodducts p
WHERE p.UnitsInStock + p.UnitsOnOrder <= p.ReorderLevel 
AND p.Discontinued = 0
ORDER BY p.ProductID
