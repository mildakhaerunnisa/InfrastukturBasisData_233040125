SELECT o.empid, o.firstname, o.lastname, o.titleofcourtesy,
CASE
	WHEN o.titleofcourtesy IN ('Ms.', 'Mrs.') THEN 'Female'
	WHEN o.titleofcourtesy = 'Mr.' THEN 'Male'
	ELSE 'Unknown'
END AS 'gender'
FROM HR.Employees o;