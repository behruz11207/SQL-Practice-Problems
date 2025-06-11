-- 12. Employees full name?
Show the FirstName and LastName columns from the Employees table,
and then create a new column called FullName, showing FirstName and
LastName joined together in one column, with a space in-between.

-- Hint
Joining two fields like this is called concatenation. Look online for
examples of string concatenation with SQL Server.

-- Expected Results
CREATE TABLE Employees (
FirstName VARCHAR(50),
LastName VARCHAR(50));

INSERT INTO Employees (FirstName, LastName) VALUES
('Nancy', 'Davolio'),
('Andrew', 'Fuller'),
('Janet', 'Leverling'),
('Margaret', 'Peacock'),
('Steven', 'Buchanan'),
('Michael', 'Suyama'),
('Robert', 'King'),
('Laura', 'Callahan'),
('Anne', 'Dodsworth');

-- Function of CONCAT
SELECT e.FirstName, e.LastName , 
CONCAT(e.FirstName, '	', e.LastName) AS FullName 
FROM Employees e
