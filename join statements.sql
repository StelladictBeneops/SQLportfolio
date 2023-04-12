SELECT EmployeeName, Surname, Birthdate, Gross, SalaryDate
FROM Employees, Salaries
WHERE EmployeeID = PersonID;

/* Same Code, Improved Readability (you can tell which table each column is from) */

SELECT Employees.EmployeeName, Employees.Surname, Employees.Birthdate, Salaries.Gross, Salaries.SalaryDate
FROM Employees, Salaries
WHERE EmployeeID = PersonID;

/* Same code, using aliases to cut down on typing time */

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees as e, Salaries as s
WHERE e.EmployeeID = s.PersonID;

/* Same code, using aliases to cut down on typing time, cutting out clutter keywords */

Select e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
From Employees e, Salaries s
WHERE e.EmployeeID = s.PersonID;

/* Ordering Table */

SELECT EmployeeName, Birthdate, Gross, SalaryDate
FROM Employees, Salaries
WHERE EmployeeID = PersonID
ORDER BY Surname /* ASC */;

/* Explicitly Joining the Tables together using the Join command */

SELECT e.EmployeeName, e.Birthdate, s.Gross, s.SalaryDate
FROM Employees e JOIN Salaries s
ON e.EmployeeID = s.PersonID
ORDER BY e.Surname;

/* Performing a Left Outer Join */
-- selects all the columns from the first table after the FROM
-- clause, regardless of whether or not they have matches in 
-- the second table.

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees e LEFT OUTER JOIN Salaries s
ON e.EmployeeID = s.PersonID
ORDER BY e.Surname;

/* OUTER is a Clutter Word, same code, same output, less typing */

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees e LEFT JOIN Salaries s
ON e.EmployeeID = s.PersonID
ORDER BY e.Surname;

/* Performing a Right Outer Join */
-- selects all the columns from the second table after the 
-- FROM clause, regardless of whether or not they have 
-- matches in the second table.

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees e RIGHT /* OUTER */ JOIN Salaries s
ON e.EmployeeID = s.PersonID
ORDER BY e.Surname;

/* Performing a Full Outer Join*/
--Returns all the rows whether they have matches or not

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees AS e FULL OUTER JOIN Salaries AS s
ON e.EmployeeID = s.PersonID
ORDER BY e.Surname;

/* less clutter */

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees e FULL JOIN Salaries s
ON e.EmployeeID = s.PersonID
ORDER BY e.Surname;

/* Using the WHERE clause to further restrict results */
-- Employees who have annual salaries > $100,000

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees e, Salaries s
WHERE e.EmployeeID = s.PersonID
AND s.gross > 100000
ORDER BY e.Surname;

/* Using the WHERE clause to further restrict results */
-- Employees who H before an A somewhere in their name


SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees e LEFT JOIN Salaries s
ON e.EmployeeID = s.PersonId
WHERE e.Surname LIKE '%h%a%'
ORDER BY Surname;

/* Using the WHERE clause to further restrict results */
-- Employees who H before an A somewhere in their name
-- OR that have a salary > $100,000

SELECT e.EmployeeName, e.Surname, e.Birthdate, s.Gross, s.Salarydate
FROM Employees e LEFT JOIN Salaries s
ON e.EmployeeID = s.PersonId
WHERE e.Surname LIKE '%h%a%' OR s.gross > 100000
ORDER BY Surname;

/*Three Way Join*/

SELECT d.DepName, e.EmployeeName AS Name, e.Surname AS Last, s.Gross
FROM Employees As e, Salaries AS s, Departments as D
WHERE e.EmployeeID = s.PersonID
AND e.DepID = d.DepID
ORDER BY d.DepID, e.Surname;

SELECT d.DepName DepartmentName, e.EmployeeName FirstName, e.Surname LastName, s.Gross AnnualGross, s.Salarydate SalaryReviewDate
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.PersonID
JOIN Departments d ON e.DepID = d.DepID
ORDER BY d.DepID DESC, e.Surname ASC;

SELECT d.DepName DepartmentName, e.EmployeeName FirstName, e.Surname LastName, s.Gross AnnualGross, s.Salarydate SalaryReviewDate
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.PersonID
JOIN Departments d ON e.DepID = d.DepID
WHERE e.Surname LIKE '%at'
ORDER BY d.DepID, e.Surname;

/* Showing all Columns*/

SELECT * FROM 
Employees AS e, Salaries AS s, Departments as D
WHERE e.EmployeeID = s.PersonID
AND e.DepID = d.DepID
ORDER BY d.DepID ASC, e.Surname ASC, s.SalaryDate ASC;