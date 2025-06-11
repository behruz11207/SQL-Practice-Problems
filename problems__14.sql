-- 14. How many customers?
How many customers do we have in the Customers table? Show one
value only, and don’t rely on getting the recordcount at the end of a
resultset.


-- Hint
In order to get the total number of customers, we need to use what’s
called an aggregate function. Look online for an aggregate function that
would work for this problem.


--Expected Results
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES 
(1, 'Alfreds Futterkiste', 'Germany'),
(2, 'Ana Trujillo Emparedados', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Mexico'),
(4, 'Around the Horn', 'UK'),
(5, 'Berglunds snabbköp', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Germany'),
(7, 'Blondel père et fils', 'France'),
(8, 'Bólido Comidas preparadas', 'Spain'),
(9, 'Bon app', 'France'),
(10, 'Bottom-Dollar Markets', 'Canada'),
(11, 'Cactus Comidas para llevar', 'Argentina'),
(12, 'Centro comercial Moctezuma', 'Mexico'),
(13, 'Chop-suey Chinese', 'Switzerland'),
(14, 'Comércio Mineiro', 'Brazil'),
(15, 'Consolidated Holdings', 'UK'),
(16, 'Drachenblut Delikatessen', 'Germany'),
(17, 'Du monde entier', 'France'),
(18, 'Eastern Connection', 'UK'),
(19, 'Ernst Handel', 'Austria'),
(20, 'Familia Arquibaldo', 'Brazil'),
(21, 'FISSA Fabrica Inter. Salchichas S.A.', 'Spain'),
(22, 'Folies gourmandes', 'France'),
(23, 'Folk och fä HB', 'Sweden'),
(24, 'Frankenversand', 'Germany'),
(25, 'France restauration', 'France'),
(26, 'Franchi S.p.A.', 'Italy'),
(27, 'Furia Bacalhau e Frutos do Mar', 'Portugal'),
(28, 'Galería del gastrónomo', 'Spain'),
(29, 'Godos Cocina Típica', 'Mexico'),
(30, 'Gourmet Lanchonetes', 'Brazil');


--The total number was found using the aggregate function.

SELECT COUNT(*) AS TotalCustomers
FROM Customers;
