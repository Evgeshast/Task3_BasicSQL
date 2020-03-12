SELECT [Order Details].UnitPrice * [Order Details].Quantity * (1 - [Order Details].Discount) As Totals
FROM [Northwind].[dbo].[Order Details]

SELECT COUNT(Orders.ShippedDate) FROM Orders

SELECT COUNT(DISTINCT Orders.CustomerID) FROM Orders