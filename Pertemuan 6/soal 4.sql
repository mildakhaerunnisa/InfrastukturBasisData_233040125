USE Pertemuan6

SELECT 
	e.Name, s.Salaries
FROM Employee AS e
FULL JOIN Salaries AS S ON e.EmployeeID = s.EmployeeID