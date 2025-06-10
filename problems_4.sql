--4. Sales Representatives in the United States
Now we’d like to see the same columns as above, but only for those
employees that both have the title of Sales Representative, and also are in the United States.

--Hint
To apply multiple filters in a where clause, use “and” to separate the
filters.

CREATE TABLE Worker (
WorkerID INT Primary Key,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Title VARCHAR(100),
HireDate DATETIME,
Country VARCHAR(50));

INSERT INTO Worker(WorkerID, FirstName, LastName, Title, HireDate, Country) VALUES
(1, 'Nancy ', 'Davolio', 'Sales Representative', '2010-05-01 00:00:00.000', 'USA'),
(2, 'Janet ', 'Leverling', 'Sales Representative', '2010-04-01 00:00:00.000', 'Germany'),
(3, 'Margaret', 'Peacock', 'Sales Manager', '2011-05-03 00:00:00.000', 'USA');

--Worker who are Sales Representatives in USA
SELECT w.FirstName, w.LastName, w.HireDate FROM Worker w
WHERE w.Title = 'Sales Representative' AND w.Country = 'USA'
