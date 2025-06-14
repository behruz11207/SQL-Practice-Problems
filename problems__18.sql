    --18. Products with associated supplier names

We’d like to show, for each product, the associated Supplier. Show the
ProductID, ProductName, and the CompanyName of the Supplier. Sort
by ProductID. This question will introduce what may be a new concept, the Join clause
in SQL. The Join clause is used to join two or more relational database
tables together in a logical way. Here’s a data model of the relationship between Products and Suppliers

    --Hint
Just as a reference, here’s an example of what the syntax for the Join
looks like, using different tables from the Northwind database. It will
show all the products, with the associated CategoryName.
  
  --Expected Results
  
CREATE TABLE Supplliers (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(100)
);

CREATE TABLE Produucts (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Supplliers(SupplierID)
);


INSERT INTO Supplliers (SupplierID, CompanyName) VALUES
(1, 'Exotic Liquids'),
(2, 'New Orleans Cajun Delights'),
(3, 'Grandma Kelly''s Homestead'),
(4, 'Tokyo Traders'),
(5, 'Bigfoot Breweries'),
(6, 'Specialty Biscuits, Ltd.'),
(7, 'Norske Meierier'),
(8, 'Pavlova, Ltd.'),
(9, 'Formaggi Fortini s.r.l.'),
(10, 'Svensk Sjöföda AB'),
(11, 'Plutzer Lebensmittelgroßmärkte AG'),
(12, 'Karkki Oy');


INSERT INTO Produucts (ProductID, ProductName, SupplierID) VALUES
(1, 'Chai', 1),
(2, 'Chang', 1),
(3, 'Aniseed Syrup', 1),
(4, 'Chef Anton''s Cajun Seasoning', 2),
(5, 'Chef Anton''s Gumbo Mix', 2),
(6, 'Grandma''s Boysenberry Spread', 3),
(7, 'Uncle Bob''s Organic Dried Pears', 3),
(8, 'Northwoods Cranberry Sauce', 3),
(9, 'Mishi Kobe Niku', 4),
(10, 'Ikura', 4),
(11, 'Louisiana Hot Spiced Okra', 2),
(12, 'Laughing Lumberjack Lager', 5),
(13, 'Scottish Longbreads', 6),
(14, 'Gudbrandsdalsost', 7),
(15, 'Outback Lager', 8),
(16, 'Flotemysost', 7),
(17, 'Mozzarella di Giovanni', 9),
(18, 'Röd Kaviar', 10),
(19, 'Longlife Tofu', 4),
(20, 'Rhönbräu Klosterbier', 11),
(21, 'Lakkalikööri', 12),
(22, 'Original Frankfurter grüne Soße', 11);

--We use JOIN, which is supplier names

SELECT p.ProductID, p.ProductName, s.CompanyName AS Supplier
FROM Produucts p
JOIN Supplliers s ON p.SupplierID = s.SupplierID
