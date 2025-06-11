-- 13. OrderDetails amount per line item
In the OrderDetails table, we have the fields UnitPrice and Quantity.
Create a new field, TotalPrice, that multiplies these two together. We’ll
ignore the Discount field for now.
In addition, show the OrderID, ProductID, UnitPrice, and Quantity.
Order by OrderID and ProductID.

-- Hint
In this computed column, you need to use the arithmetic operator for
multiplication.


-- Expected Results
CREATE TABLE OrdersDetails (
    OrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    TotalPrice DECIMAL(10,2)
);

INSERT INTO OrdersDetails (OrderID, ProductID, UnitPrice, Quantity, TotalPrice) VALUES
(10248, 11, 14.00, 12, 168.00),
(10248, 42, 9.80, 10, 98.00),
(10248, 72, 34.80, 5, 174.00),
(10249, 14, 18.60, 9, 167.40),
(10249, 51, 42.40, 40, 1696.00),
(10250, 41, 7.70, 10, 77.00),
(10250, 51, 42.40, 35, 1484.00),
(10250, 65, 16.80, 15, 252.00),
(10251, 22, 16.80, 6, 100.80),
(10251, 57, 15.60, 15, 234.00),
(10251, 65, 16.80, 20, 336.00),
(11077, 13, 6.00, 4, 24.00),
(11077, 14, 23.25, 1, 23.25),
(11077, 16, 17.45, 2, 34.90),
(11077, 20, 81.00, 1, 81.00),
(11077, 23, 9.00, 2, 18.00),
(11077, 32, 32.00, 1, 32.00),
(11077, 39, 18.00, 2, 36.00),
(11077, 41, 9.65, 3, 28.95),
(11077, 46, 12.00, 3, 36.00),
(11077, 52, 7.00, 2, 14.00),
(11077, 55, 24.00, 2, 48.00),
(11077, 60, 34.00, 2, 68.00),
(11077, 64, 33.25, 2, 66.50),
(11077, 66, 17.00, 1, 17.00),
(11077, 73, 15.00, 2, 30.00),
(11077, 75, 7.75, 4, 31.00),
(11077, 77, 13.00, 2, 26.00);


-- Displays the price, quantity, and total price (TotalPrice) of products for each order (OrderID)

SELECT od.OrderID, od.OrderID, od.UnitPrice, od.Quantity,
(od.UnitPrice * od.Quantity) AS TotalPrice
FROM OrdersDetails od
ORDER BY od.OrderID, od.ProductID;
