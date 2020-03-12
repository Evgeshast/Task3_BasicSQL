SELECT Suppliers.CompanyName, 
(SELECT Products.UnitsInStock FROM Products 
WHERE Products.SupplierID = Suppliers.SupplierID AND Products.UnitsInStock IN(0)) AS Amount
FROM Suppliers

SELECT Employees.LastName FROM Employees WHERE EXISTS
(SELECT Count(OrderID) FROM Orders 
WHERE Orders.EmployeeID = Employees.EmployeeID 
HAVING Count(OrderID)>150)

SELECT Customers.CompanyName FROM Customers WHERE EXISTS
(SELECT COUNT(Orders.OrderID) FROM Orders
WHERE Customers.CustomerID = Orders.CustomerID)