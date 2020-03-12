select Orders.OrderID, Orders.ShippedDate, Orders.ShipVia 
from Northwind.dbo.Orders 
where Orders.ShippedDate >= '1998-05-06' and Orders.ShipVia >= 2

select 
    Orders.OrderID as 'OrderID', 
	case 
        when Orders.ShippedDate IS NULL 
        then 'Not shipped' 
		end 
    as 'ShippedDate'
from Northwind.dbo.Orders
where Orders.ShippedDate IS NULL;

declare 
    @date DATETIME = CONVERT(DATETIME, '1998-05-06'),
	@DEFAULT_DATETIME_FORMAT INT = 0

select 
    Orders.OrderID as 'Order Number', 
	case 
        when Orders.ShippedDate IS NULL 
        then 'Not shipped' 
	else convert(varchar(30), Orders.ShippedDate, @DEFAULT_DATETIME_FORMAT)
		end 
    as 'Shipped Date'
from Northwind.dbo.Orders
where Orders.ShippedDate > @DEFAULT_DATETIME_FORMAT or Orders.ShippedDate IS NULL; 