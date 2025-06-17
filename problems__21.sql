        --Intermediate Problems

-- 21. Total customers per country/city?

In the Customers table, show the total number of customers per Country and City

--Hint
Just as you can have multiple fields in a Select clause, you can also have
multiple fields in a Group By clause.

--Expected Results

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50),
    City VARCHAR(50)
);


INSERT INTO Customers (CustomerID, CustomerName, Country, City) VALUES
(1, 'Customer A', 'UK', 'London'),
(2, 'Customer B', 'UK', 'London'),
(3, 'Customer A1', 'UK', 'London'),
(4, 'Customer B1', 'UK', 'London'),
(5, 'Customer A2', 'UK', 'London'),
(6, 'Customer B2', 'UK', 'London'),
(7, 'Customer C1', 'Mexico', 'México D.F.'),
(8, 'Customer C2', 'Mexico', 'México D.F.'),
(9, 'Customer C3', 'Mexico', 'México D.F.'),
(10, 'Customer C4', 'Mexico', 'México D.F.'),
(11, 'Customer C5', 'Mexico', 'México D.F.'),
(12, 'Customer D1', 'Brazil', 'Sao Paulo'),
(13, 'Customer E1', 'Brazil', 'Sao Paulo'),
(14, 'Customer D2', 'Brazil', 'Sao Paulo'),
(15, 'Customer E1', 'Brazil', 'Sao Paulo'),
(16, 'Customer S1', 'Spain', ' Madrid'),
(17, 'Customer S2', 'Spain', ' Madrid'),
(18, 'Customer S3', 'Spain', ' Madrid'),
(19, 'Customer F1', 'Brazil', 'Rio de Janeiro'),
(20, 'Customer F2', 'Brazil', 'Rio de Janeiro'),
(21, 'Customer F3', 'Brazil', 'Rio de Janeiro'),
(22, 'Customer I1', 'Argentina', 'Buenos Aires'),
(23, 'Customer I2', 'Argentina', 'Buenos Aires'),
(24, 'Customer I3', 'Argentina', 'Buenos Aires'),
(25, 'Customer J1', 'USA', 'Portland'),
(26, 'Customer J2', 'USA', 'Portland'),
(27, 'Customer J3', 'France', 'Paris'),
(28, 'Customer J4', 'France', 'Paris'),
(29, 'Customer J5', 'France',' Nantes'),
(30, 'Customer J6', 'France',' Nantes'),
(31, 'Customer J7', 'Portugal',' Lisboa'),
(32, 'Customer J8', 'Portugal',' Lisboa'),
(33, 'Customer A3', 'Finland',' Oulu'),
(34, 'Customer A4', 'Italy Reggio',' Emilia'),
(35, 'Customer A5', 'France',' Reims'),
(36, 'Customer A6', 'Brazil' ,' Resende');


---- Count total customers in each country and city, ordered by highest count

SELECT c.Country, c.City, COUNT(c.CustomerID) AS TotalCustomer
FROM Customers c
GROUP BY c.Country, c.City
ORDER BY TotalCustomer DESC
