--1. Which shippers do we have?

We have a table called Shippers. Return all the fields from all the shippers

--Hint
The standard format for a select statement that returns all columns and
all rows is “Select * from TableName”.

--Expected Results
Create table Shippers (
ShipperID INT Primary Key,
CompmanyName VARCHAR(50),
Phone VARCHAR(20))

INSERT INTO Shippers (ShipperID, CompmanyName, Phone) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931')


--Select all from Shippers
SELECT * FROM Shippers
