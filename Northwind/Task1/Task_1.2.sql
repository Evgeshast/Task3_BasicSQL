select Customers.ContactName,Customers.Country 
from Customers 
where Customers.Country in('USA', 'Canada')
order by Customers.ContactName,Customers.Country 

select Customers.ContactName,Customers.Country 
from Customers 
where Customers.Country not in('USA', 'Canada')
order by Customers.ContactName

select distinct Customers.Country 
from Customers
order by Customers.Country desc 