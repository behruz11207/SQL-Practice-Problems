-- 2. Certain fields from Categories
In the Categories table, selecting all the fields using this SQL:
Select * from Categories
…will return 4 columns. We only want to see two columns,
CategoryName and Description.


--HINT
Instead of * in the Select statement, specify the column names with a comma between them 


--Expected Results
CREATE TABLE Categories (
CategoriesID INT Primary KEY,
CategoryName VARCHAR(50),
Description TEXT)

INSERT INTO Categories (CategoriesID, CategoryName, Description) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections ', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', ' Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood ', 'Seaweed and fish');


-- Select CategoryName and Description from Categories
SELECT c.CategoryName, c.Description FROM Categories c
