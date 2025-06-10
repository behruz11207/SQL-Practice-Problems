-- 7. Products with “queso” in ProductName
In the products table, we’d like to see the ProductID and ProductName
for those products where the ProductName includes the string “queso”.


-- Hint
In an earlierproblem, we were looking for exact matches — where our
filter matched the value in the field exactly. Here, we’re looking for
rows where the ProductName field has the value “queso” somewhere in it.
Use the “like” operator, with wildcards, in the answer. Feel free to do
some research online to find examples.

  
-- Expected Results
CREATE TABLE Products (
ProductID INT,
ProductName VARCHAR(50))

INSERT INTO Products (ProductID, ProductName) VALUES
(11, 'Queso Cabrales'),
(12, 'Queso Manchego La Pastora')

-- The string “queso”
SELECT * FROM Products p
WHERE p.ProductName LIKE 'queso%'
