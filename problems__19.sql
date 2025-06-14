   --19. Orders and the Shipper that was used
We’d like to show a list of the Orders that were made, including the
Shipper that was used. Show the OrderID, OrderDate (date only), and
CompanyName of the Shipper, and sort by OrderID.
In order to not show all the orders (there’s more than 800), show only
those rows with an OrderID of less than 10300.

   --Hint
First, create a SQL statement that shows only the rows and columns you need from the Orders table.
Then, work on adding the join to the Shipper table, and the necessary field from that table.
This data model should help you visualize the join between the Orders table and the Shippers table.

  
   --Expected Results
CREATE TABLE Shippers (
    ShipperID INT PRIMARY KEY,
    CompanyName VARCHAR(100)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID)
);


INSERT INTO Shippers (ShipperID, CompanyName) VALUES
(1, 'Speedy Express'),
(2, 'United Package'),
(3, 'Federal Shipping');



INSERT INTO Orders (OrderID, OrderDate, ShipperID) VALUES
(10248, '2014-07-04', 3),
(10249, '2014-07-05', 1),
(10250, '2014-07-08', 2),
(10251, '2014-07-08', 1),
(10252, '2014-07-09', 2),
(10253, '2014-07-10', 2),
(10254, '2014-07-11', 2),
(10255, '2014-07-12', 3),
(10256, '2014-07-15', 2),
(10257, '2014-07-16', 3),
(10258, '2014-07-17', 1),
(10259, '2014-07-18', 3),
(10260, '2014-07-19', 1),
(10261, '2014-07-19', 2),
(10262, '2014-07-22', 3),
(10263, '2014-07-23', 3),
(10264, '2014-07-24', 3),
(10267, '2014-08-19', 1),
(10268, '2014-08-20', 2),
(10269, '2014-08-21', 3),
(10270, '2014-08-22', 3),
(10271, '2014-08-23', 1),
(10272, '2014-08-26', 3),
(10273, '2014-08-27', 1),
(10274, '2014-08-27', 2),
(10275, '2014-08-28', 2),
(10276, '2014-08-29', 3),
(10277, '2014-08-30', 2),
(10278, '2014-09-02', 2),
(10279, '2014-09-03', 1),
(10280, '2014-09-04', 2),
(10281, '2014-09-05', 2),
(10282, '2014-09-06', 2);


--I used to solve JOIN , changed OrderDate and OrderID < 10300
SELECT o.OrderID, CAST(o.OrderDate AS DATE) AS OrderDate,
sh.CompanyName AS Shipper FROM Orders o
JOIN Shippers sh ON o.ShipperID = sh.ShipperID
WHERE o.OrderID < 10300
ORDER BY o.OrderID
