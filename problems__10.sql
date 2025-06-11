-- 10. Employees, in order of age? 
For all the employees in the Employees table, show the FirstName,
LastName, Title, and BirthDate. Order the results by BirthDate, so we
have the oldest employees first.

-- Hint
You’ll need to use the Order by clause here for sorting the results. Look
online for examples.

-- Expected Results
CREATE TABLE Employees (
FirstName VARCHAR(50),
LastName VARCHAR(50),
Title VARCHAR(50),
BirthDate DATETIME);

INSERT INTO Employees (FirstName, LastName, Title, BirthDate) VALUES
('Margaret', 'Peacock' ,'Sales Representative', '1955-09-19 00:00:00.000'),
('Nancy', 'Davolio', 'Sales Representative', '1966-12-08 00:00:00.000'),
('Andrew', 'Fuller', 'Vice President, Sales', '1970-02-19 00:00:00.000'),
('Steven', 'Buchanan', 'Sales Manager', '1973-03-04 00:00:00.000'),
('Laura', 'Callahan', 'Inside Sales Coordinator', '1976-01-09 00:00:00.000'),
('Robert', 'King', 'Sales Representative', '1978-05-29 00:00:00.000'),
('Michael', 'Suyama', 'Sales Representative', '1981-07-02 00:00:00.000'),
('Janet', 'Leverling', 'Sales Representative', '1981-08-30 00:00:00.000'),
('Anne', 'Dodsworth', 'Sales Representative', '1984-01-27 00:00:00.000');

-- Order By BirthDate and If we need an old employee, we can use 'TOP 1' or LIMIT 1.
SELECT  * FROM Employees e
ORDER BY e.BirthDate
