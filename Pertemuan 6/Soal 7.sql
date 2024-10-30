USE Pertemuan6

SELECT e.Name, d.DepartementsName
FROM Employee AS e
INNER JOIN Departements AS d ON e.DepartementsID = d.DepartementsID