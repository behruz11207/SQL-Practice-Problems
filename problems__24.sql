          --Intermediate Problems

-- 24. Customer list by region?

A salesperson for Northwind is going on a business trip to visit
customers, and would like to see a list of all customers, sorted by
region, alphabetically.
However, he wants the customers with no region (null in the Region
field) to be at the end, instead of at the top, where you’d normally find
the null values. Within the same region, companies should be sorted by CustomerID.


--Hint
  
You won’t be able to sort directly on the Region field here. You’ll need
to sort on the Region field, and also on a computed field that you create,
which will give you a secondary sort for when Region is null
First, without ordering, create a computed field that has a value which
will sort the way you want. In this case, you can create a field with the
Case statement, which allows you do to if/then logic. You want a field
that is 1 when Region is null.
When the Region contains a null, you will have a 1 in the final column.
Now, just add the fields for the Order By clause, in the right order.

  
--Expected Results
  
CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CompanyName VARCHAR(100),
    Region VARCHAR(50)
);


INSERT INTO Customers (CustomerID, CompanyName, Region) VALUES
('OLDWO', 'Old World Delicatessen', 'AK'),
('BOTTM', 'Bottom-Dollar Markets' , 'BC'),
('LAUGB' , 'Laughing Bacchus Wine Cellars', 'BC'),
('LETSS', 'Let is Stop N Shop', 'CA'),
('HUNGO' , 'Hungry Owl All-Night Grocers', 'Co. Cork'),
('GROSR' , 'GROSELLA-Restaurante', 'DF'),
('SAVEA' ,' Save-a-lot Markets', 'ID'),
('ISLAT' , 'Island Trading', 'Isle of Wight'),
('LILAS' , 'LILA-Supermercado', 'Lara'),
('THECR' , 'The Cracker Box' , 'MT'),
('RATTC', 'Rattlesnake Canyon Grocery', 'NM'),
('SANTG', 'Santé Gourmet', NULL),
('SEVES',  'Seven Seas Imports' ,NULL),
('SIMOB',  'Simons bistro'  ,NULL),
('SPECD', 'Spécialités du monde', NULL),
('SUPRD',  'Suprêmes délices', NULL),
('TOMSP',   'Toms Spezialitäten', NULL),
('TORTU',    'Tortuga Restaurante', NULL),
('VAFFE', 'Vaffeljernet', NULL),
('VICTE' ,'Victuailles en stock', NULL),
('VINET', 'Vins et alcools Chevalier', NULL),
('WANDK', 'Die Wandernde Kuh  ' ,NULL),
('WARTH', ' Wartian Herkku   ' , NULL),
('WILMK',  ' Wilman Kala  ' ,NULL),
('WOLZA',   ' Wolski Zajazd', NULL),
('FRNKT', 'Frankfurt Foods', 'HE'),
('BLUST', 'Blue Star Delights', 'NS'),
('SUNRM', 'Sunrise Market', 'TX'),
('EVRGR', 'Evergreen Grocers', 'WA'),
('CITGO', 'City Gold Supplies', 'CA'),
('NORDS', 'Nordic Spices', 'SK'),
('PRMKT', 'Prime Market Central', 'ON'),
('MNTNR', 'Mountain Range Goods', 'CO'),
('GRNBY', 'Green Bay Grocery', 'WI')


-- List customers ordered by Region (nulls last), then by CustomerID
-- CASE used to sort NULL Region values to the end

SELECT c.CustomerID, c.CompanyName, c.Region 
FROM Customers c
ORDER BY 
CASE 
	WHEN c.Region IS NULL THEN 1 ELSE 0 
END,
c.Region, c.CustomerID
