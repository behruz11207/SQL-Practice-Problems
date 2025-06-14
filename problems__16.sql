  --16. Countries where there are customers

Show a list of countries where the Northwind company has customers.

  --Hint
You’ll want to use the Group By clause for this query


  -- Expected Results
CREATE TABLE Customer5s (
Country VARCHAR(50));

INSERT INTO Customer5s (Country) VALUES
('Argentina'),
('Austria'),
('Belgium'),
('Brazil'),
('Canada'),
('Denmark'),
('Finland'),
('France'),
('Germany'),
('Ireland'),
('Italy'),
('Mexico'),
('Norway'),
('Poland'),
('Portugal'),
('Spain'),
('Sweden'),
('Switzerland'),
('UK'),
('USA'),
('Venezuela'),
('Zeland');

--GROUP BY Country

SELECT c.Country FROM Customer5s c
GROUP BY c.Country
