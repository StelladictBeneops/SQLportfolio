/* The summation of all the rows in the selected column */

SELECT SUM(Gross) AS SumGross
FROM Salaries;

/* The minimum value in the selected column */

SELECT MIN(Gross) as MinGross
FROM Salaries;

/* The max value in the selected column */

SELECT MAX(Gross) AS MaxGross
FROM Salaries;

/* Highest age value using MIN function on Birthdate */

SELECT MIN(Employees.Birthdate) AS OldestEmployee
FROM Employees;

/* Youngest age value using MAX function on Birthdate */

SELECT MAX(Employees.Birthdate) AS OldestEmployee
FROM Employees;

/* First name in column by Alphabetical Order */

SELECT MIN(Surname) AS FirstByLastName
FROM Employees;

/* Last name in column by Alphabetical Order */

SELECT MAX(Surname) AS LastByLastName
FROM Employees;

/* First name in colomn Alpabetically, that contains a 'H' */

SELECT MIN(Surname) AS FirstContainingH
FROM Employees
Where Surname LIKE '%h%';

/* How many Employees do we have? */

SELECT COUNT(*) AS CountEmployees
FROM Employees;

/* What is our Average Salary? */

SELECT AVG(Gross) AS AvgGross
FROM Salaries;

/* Alternative Form*/

SELECT SUM(Gross) / COUNT(Gross) AS AvgGross
FROM Salaries;

/* Salary Data Breakdown */

SELECT SUM(Gross) AS TotalAnnualGrossForAllEmployees, MIN(Gross) AS LowestAnnualIncome, MAX(Gross) AS HighestAnnualIncome, AVG(Gross) AS AverageIncome, COUNT(*) AS NumberOfSalaries
FROM Salaries;

/* Shows only unique entries in the table */

SELECT DISTINCT Surname
FROM Employees;

/* Group By is used to divide a Database Table into Groups based on the group columns. */
--For each group you can appy aggregate functions.
--In this case the result set contains non-repetitive 
--groups of the surnames. In most cases each group
--contain only one surname; if there are several 
--identical surnames, the group contains all of them.

SELECT Surname
FROM Employees
GROUP BY Surname;

/* WHERE before GROUP BY */
--Surnames > J in the Alphabet

SELECT Surname
FROM Employees
WHERE Surname > 'J'
GROUP BY Surname
ORDER BY Surname DESC; /*Order by must be last in statement*/

SELECT PersonID, SUM(Gross) AS SumGross
FROM Salaries
GROUP BY PersonID;

SELECT PersonID, SUM(Gross) AS SumGross
FROM Salaries
WHERE Gross > 100000
GROUP BY PersonID;

SELECT PersonID, SUM(Gross) AS SumGross
FROM Salaries
GROUP BY PersonID
HAVING SUM(GROSS) > 90000;

/* SUM and AVG Earnings by Departments */

SELECT Departments.DepName, SUM(Salaries.Gross) As SumGross, AVG(Salaries.Gross) AS AvgGross
FROM Departments JOIN Employees
ON Departments.DepID = Employees.DepID
JOIN Salaries
ON Employees.EmployeeID = Salaries.PersonID
GROUP BY Departments.DepName
ORDER BY Departments.DepName ASC;
