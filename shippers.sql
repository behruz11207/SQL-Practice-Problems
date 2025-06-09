--1. Which shippers do we have?

We have a table called Shippers. Return all the fields from all the shippers

--Create table
Create table Shippers (
ShipperID INT Primary Key,
CompmanyName VARCHAR(50),
Phone VARCHAR(20))

INSERT INTO Shippers (ShipperID, CompmanyName, Phone) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931')


--Solve
SELECT * FROM Shippers
