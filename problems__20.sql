          --Intermediate Problems
-- 20. Categories, and the total products in each category?

For this problem, we’d like to see the total number of products in each
category. Sort the results by the total number of products, in descending order.

-- Hint
  
To solve this problem, you need to combine a join, and a group by.
A good way to start is by creating a query that shows the CategoryName
and all ProductIDs associated with it, without grouping. Then, add the Group by
  
  --Expected Results
  
CREATE TABLE Categories (
CategoryID INT Primary Key,
CategoryName VARCHAR(50)); 


CREATE TABLE Products(
ProductID INT Primary Key,
ProductName VARCHAR(50),
CategoryID INT);


INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Beverages'),
(2, 'Condiments'),
(3, 'Confections'),
(4, 'Dairy Products'),
(5, 'Grains/Cereals'),
(6, 'Meat/Poultry'),
(7, 'Produce'),
(8, 'Seafood');


INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES
(1, 'Chocolate', 3),
(2, 'Candy', 3),
(3, 'Cookies', 3),
(4, 'Brownies', 3),
(5, 'Fudge', 3),
(6, 'Mints', 3),
(7, 'Toffee', 3),
(8, 'Truffles', 3),
(9, 'Marzipan', 3),
(10, 'Nougat', 3),
(11, 'Tea', 1),
(12, 'Coffee', 1),
(13, 'Juice', 7),
(14, 'Soda', 1),
(15, 'Water', 1),
(16, 'Beer', 1),
(17, 'Wine', 6),
(18, 'Ketchup', 2),
(19, 'Mustard', 5),
(20, 'Mayonnaise', 2),
(21, 'BBQ Sauce', 2),
(22, 'Soy Sauce', 4),
(23, 'Hot Sauce', 2),
(24, 'Relish', 2),
(25, 'Vinegar', 2),
(26, 'Salmon', 8),
(27, 'Tuna', 8),
(28, 'Shrimp', 5),
(29, 'Anchovies', 8),
(30, 'Scallops', 8),
(31, 'Cod', 8),
(32, 'Halibut', 8),
(33, 'Yogurt', 4),
(34, 'Cream', 4),
(35, 'Ice Cream', 4),
(36, 'Sour Cream', 5),
(37, 'Chicken', 6),
(38, 'Beef', 6),
(39, 'Pork', 6),
(40, 'Lamb', 7),
(41, 'Duck', 7),
(42, 'Turkey', 7);


-- Show total number of products in each category, ordered by highest count

SELECT c.CategoryName, COUNT(p.ProductID) AS TotalProducts
FROM  Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName
ORDER BY TotalProducts DESC
