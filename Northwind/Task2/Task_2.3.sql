SELECT DISTINCT e.EmployeeID, e.LastName
FROM [Northwind].[dbo].Employees e
INNER JOIN [Northwind].[dbo].EmployeeTerritories et
ON e.EmployeeID = et.EmployeeID
INNER JOIN [Northwind].[dbo].Territories t
ON et.TerritoryID = t.TerritoryID
INNER JOIN [Northwind].[dbo].Region r
ON t.RegionID = r.RegionID
WHERE r.RegionDescription = 'Western'

SELECT CompanyName, Count(OrderID)
	AS Amount FROM [Northwind].[dbo].Customers
LEFT JOIN [Northwind].[dbo].Orders 
ON Customers.CustomerID = Orders.CustomerID
GROUP BY CompanyName
ORDER BY Amount