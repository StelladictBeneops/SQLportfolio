/* Ariez Hart (Previously Othus) */

/* * * DEPARTMENTS * * */

INSERT INTO Departments (DepID, DepName) VALUES (1, 'Analytics');
INSERT INTO Departments (DepName, DepID) VALUES ('Database Architecture', 2);
INSERT INTO Departments VALUES (3, 'Database Administration');
INSERT INTO Departments (DepName, DepID) VALUES ('Cyber Security', 4);

/* * * EMPLOYEES * * */

/* Inserting my Analysts into my Employees Table */

INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Birthdate, Height, BossID) VALUES (1, 1, 'Hart', 'Ariez', '1991-02-20', 1.63, 1); 
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, BossID) VALUES (2, 1, 'Chaney', 'Jason', 1);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, BossID) VALUES (3, 1, 'Anderson', 'Nia', 2);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, BossID) VALUES (4, 1, 'Wright', 'Holly', 2);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, BossID) VALUES (5, 1, 'Goldberg', 'Abram', 2);

/* Inserting my Database Architecture Staff into my Employees Table */

INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (6, 2, 'Christilaw', 'Dennis', NULL, 2);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (7, 2, 'Susarla', 'Mohammad', NULL, 2);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (8, 2, 'McInerney', 'Denise', NULL, 2);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (9, 2, 'Shapira', 'Curtis', NULL, 3);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (10, 2, 'Liu', 'Linda', NULL, 2);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (11, 2, 'Booker', 'Adam', 1.89, 3);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, BossID) VALUES (12, 2, 'Redhat', 'Carmen', 3);

/* Inserting my Database Administrators into my Employees Table */

INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Birthdate, Height, BossID) VALUES (13, 3, 'Othus', 'David', '1966-04-19', 1.86, 4);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (14, 3, 'Jackson', 'Hunter', NULL, 4); 
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (15, 3, 'Davis', 'Bradley', NULL, 4); 
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (16, 3, 'Wadhwa', 'Sanjay', NULL, 5);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (17, 3, 'Snezana', 'Sahter', NULL, 5);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (18, 3, 'Umit', 'Yalcinalp', NULL, 5);

/* Inserting my Cyber Security Staff into my Employees Table */

INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (19, 4, 'Johnson','Alexa', 1.70, 6);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (20, 4, 'Whitehat', 'Robby', NULL, 6);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (21, 4, 'Whitehat', 'Nathan', NULL, 6);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (22, 4, 'Greyhat', 'Sue', NULL, 7);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (23, 4, 'Whitehat', 'Mohammad', NULL, 7);
INSERT INTO Employees (EmployeeID, DepID, Surname, EmployeeName, Height, BossID) VALUES (24, 4, 'Blackhat', 'Justice', NULL, 7);

/* * * SALARIES * * */

/* Inserting the Salaries for my Analyst Team */

INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (1, 1, 85000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (2, 2, 96000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (3, 3, 83000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (4, 4, 68000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (5, 5, 83000, '2020-02-28');

/* Inserting the Salaries for my Database Architect Team */

INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (6, 6, 113000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (7, 7, 145000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (8, 8, 150000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (9, 9, 150000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (10, 10, 112000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (11, 11, 113000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (12, 12, 114000, '2020-02-28');

/* Inserting the Salaries for my Database Adminstration Team */

INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (13, 13, 160000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (14, 14, 130000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (15, 15, 100000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (16, 16, 60000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (17, 17, 100000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (18, 18, 100000, '2020-02-28');

/* Inserting the Salaries for my Cyber Security Team */

INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (19, 19, 113000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (20, 20, 114000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (21, 21, 160000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (22, 22, 150000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (23, 23, 149000, '2020-02-28');
INSERT INTO Salaries (SalaryID, PersonID, Gross, SalaryDate) VALUES (24, 24, 120000, '2020-02-28');

/* * * BONUSES * * */

INSERT INTO Bonuses VALUES (1, 1, 'First Prize');
INSERT INTO Bonuses VALUES (2, 3, 'Second Prize');
INSERT INTO Bonuses VALUES (3, 7, 'Third Prize');