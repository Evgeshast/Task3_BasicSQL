select distinct [Order Details].OrderID from [Order Details] where [Order Details].Quantity between 3 and 10

SELECT Customers.CustomerID, Customers.Country
FROM Customers
WHERE SUBSTRING(Customers.Country,1,1) between 'b' and 'g'
ORDER BY Customers.Country

select * 
from Customers 
where Customers.Country > 'b' and Customers.Country < 'g'
order by Customers.Country 