SELECT
	c.empid, 
	c.firstname, 
	c.lastname
FROM HR.Employees c
LEFT JOIN Sales.Orders o ON c.empid = o.empid AND o.orderdate >= '2016-05-01'
WHERE o.orderid IS NULL