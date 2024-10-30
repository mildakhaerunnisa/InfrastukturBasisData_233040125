USE Pertemuan6


SELECT 
	e.Name as EmployeeName,
	m.Name as ManagerName
FROM Employee AS e
LEFT JOIN Employee AS m ON e.ManagerID = m.EmployeeID
ORDER BY e.Name
