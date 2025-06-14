  -- 17. Contact titles for customers
Show a list of all the different values in the Customers table for
ContactTitles. Also include a count for each ContactTitle.
This is similar in concept to the previous question “Countries where
there are customers” , except we now want a count for each ContactTitle

  --Hint
The answer for this problem builds on multiple concepts introduced in
previous problem, such as grouping, aggregate functions, and aliases.

--Expected Results
CREATE TABLE Customerss(
ContactTitle VARCHAR(50),
TotalContactTitle INT);

INSERT INTO Customerss (ContactTitle, TotalContactTitle) VALUES
('Owner', 17),
('Sales Representative', 17),
('Marketing Manager', 12),
('Sales Manager ', 11),
('Accounting Manager', 10),
('Sales Associate', 7),
('Marketing Assistant', 6),
('Sales Agent', 5),
('Assistant Sales Agent', 2),
('Order Administrator', 2),
('Assistant Sales Representative ', 1),
('Owner/Marketing Assistant', 1);

-- GROUP BY ContactTitle and ORDER BY TotalContactTitle, but decrease
SELECT c.ContactTitle, COUNT(*) AS TotalContactTitle
FROM Customerss c
GROUP BY c.ContactTitle
ORDER BY TotalContactTitle DESC
