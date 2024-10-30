USE Pertemuan6

SELECT 
	p.ProjectsName, d.DepartementsName
FROM Projects AS p
LEFT JOIN Departements AS d ON d.DepartementsID = p.DepartementsID