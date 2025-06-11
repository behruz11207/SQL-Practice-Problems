-- 11. Showing only the Date with a DateTime field
In the output of the query above, showing the Employees in order of
BirthDate, we see the time of the BirthDate field, which we don’t want.
Show only the date portion of the BirthDate field.

-- Hint
Use the Convert function to convert the BirthDate column (originally a
DateTime column) to a Date column.


-- Expected Results
CREATE TABLE Employees (
FirstName VARCHAR(50),
LastName VARCHAR(50),
Title VARCHAR(50),
DateOnlyBirthDate DATETIME);


INSERT INTO Employees (FirstName, LastName, Title, DateOnlyBirthDate) VALUES
('Margaret', 'Peacock' ,'Sales Representative', '1955-09-19'),
('Nancy', 'Davolio', 'Sales Representative', '1966-12-08'),
('Andrew', 'Fuller', 'Vice President, Sales', '1970-02-19'),
('Steven', 'Buchanan', 'Sales Manager', '1973-03-04'),
('Laura', 'Callahan', 'Inside Sales Coordinator', '1976-01-09'),
('Robert', 'King', 'Sales Representative', '1978-05-29'),
('Michael', 'Suyama', 'Sales Representative', '1981-07-02'),
('Janet', 'Leverling', 'Sales Representative', '1981-08-30'),
('Anne', 'Dodsworth', 'Sales Representative', '1984-01-27');


-- Function to convert
SELECT FirstName,  LastName, Title, 
CONVERT(date, BirthDate) AS DateOnlyBirthDate
FROM Employeess
ORDER BY BirthDate;

--This is my 2nd solution, in function 1 the result is '1955-09-19', but since we need '1955-09-19 00:00:00.000', I linked the previous tables together using 'JOIN'.

SELECT  e1.FirstName,  e1.LastName,  e1.Title,  e2.BirthDate
FROM Employees e1
JOIN Employeess e2 ON e1.FirstName = e2.FirstName
ORDER BY e2.BirthDate;
