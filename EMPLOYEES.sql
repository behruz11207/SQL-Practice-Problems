-- 3. Sales Representatives
We’d like to see just the FirstName, LastName, and HireDate of all the
employees with the Title of Sales Representative. Write a SQL
statement that returns only those employees.

--Hint
To filter out only certain rows from a table, use a Where clause. The
format for a where clause with a string filter is:
Where FieldName = 'Filter Text'

CREATE TABLE EMPLOYEES (
EmployessID INT Primary Key,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Title VARCHAR(100),
HireDate DATETIME);

INSERT INTO EMPLOYEES (EmployessID, FirstName, LastName, Title, HireDate) VALUES
(1, 'Nancy ', 'Davolio', 'Sales Representative', '2010-05-01 00:00:00.000'),
(2, 'Janet ', 'Leverling', 'Sales Representative', '2010-04-01 00:00:00.000'),
(3, 'Margaret', 'Peacock', 'Sales Representative', '2011-05-03 00:00:00.000'),
(4, 'Michael', 'Suyama', 'Sales Representative', '2011-10-17 00:00:00.000'),
(5, 'Robert', 'King', 'Sales Representative', '2012-01-02 00:00:00.000'),
(6, 'Anne', 'Dodsworth', 'Sales Representative', '2012-11-15 00:00:00.000')

--Solve
SELECT e.FirstName, e.LastName, e.HireDate FROM EMPLOYEES e
WHERE e.Title = 'Sales Representative'
