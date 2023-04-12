/* * * WILDCARD OPERATOR * * */

/* Query for things starting with M */

SELECT EmployeeName, Surname, Birthdate
FROM Employees
WHERE EmployeeName LIKE 'M%'
ORDER BY Surname;

/* Query for things comtaining M */

SELECT EmployeeName, Surname, Birthdate
FROM Employees
WHERE EmployeeName LIKE '%M%'
ORDER BY EmployeeName; 

/* Query for things comtaining M */

SELECT EmployeeName, Surname, Birthdate
FROM Employees
WHERE EmployeeName LIKE '%M'
ORDER BY EmployeeName;

/* Single Character Wild Card */

SELECT EmployeeName, Surname, Birthdate
FROM Employees
WHERE EmployeeName LIKE 'C_rmen'
ORDER BY EmployeeName;

/* Query for things not comtaining A */

SELECT EmployeeName, Surname, Birthdate
FROM Employees
WHERE EmployeeName NOT LIKE '%A%'
ORDER BY EmployeeName; 