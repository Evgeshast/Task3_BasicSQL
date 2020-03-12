SELECT UnitPrice * Quantity * (1 - Discount) AS Totals,
  YEAR(OrderDate) AS Year
  FROM [Northwind].[dbo].[Orders] AS o 
  JOIN [Northwind].[dbo].[Order Details] AS d 
  ON o.OrderID = d.OrderID
  GROUP BY d.UnitPrice, d.Quantity, d.Discount, o.OrderDate

SELECT CONCAT(LastName, FirstName) "Seller",
COUNT(o.EmployeeID) AS Amount
FROM [Northwind].[dbo].Employees AS e
JOIN [Northwind].[dbo].Orders AS o
ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.LastName, e.FirstName
ORDER BY Amount DESC

SELECT CustomerID, EmployeeID, COUNT(OrderID) AS Amount
FROM [Northwind].[dbo].Orders
WHERE Year(OrderDate)=1998
GROUP BY CustomerID, EmployeeID

SELECT DISTINCT e.City, e.LastName AS Seller, c.CompanyName AS Buyer
FROM [Northwind].[dbo].Employees e, [Northwind].[dbo].Customers c
WHERE e.City=c.City
GROUP BY e.LastName, c.CompanyName, e.City
HAVING COUNT(e.City) <= 1

SELECT City, Count(CompanyName) AS Amount
FROM [Northwind].[dbo].Customers
GROUP BY City

SELECT e1.LastName AS Employee, e2.LastName AS Manager
FROM [Northwind].[dbo].Employees e1, [Northwind].[dbo].Employees e2
WHERE e1.ReportsTo=e2.EmployeeID
GROUP BY e1.ReportsTo, e1.LastName, e2.LastName