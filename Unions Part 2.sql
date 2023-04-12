SELECT Surname, 'Employees' AS infoAboutTable
FROM Employees
WHERE Surname LIKE 'd%'
UNION
SELECT DepName, 'Departments' AS InfoAboutTable
FROM Departments
WHERE DepName LIKE 'd%';