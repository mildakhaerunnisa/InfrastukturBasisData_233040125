USE Pertemuan6;

SELECT 
    e.Name, p.ProjectsName
FROM 
    Employee AS e
INNER JOIN 
    Projects AS p ON e.EmployeeID = p.ProjectID;