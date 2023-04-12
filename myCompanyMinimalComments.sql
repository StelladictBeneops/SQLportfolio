/* Ariez Hart (previously Othus) */

CREATE DATABASE myCompany;
USE myCompany;

CREATE TABLE Departments
	(
		DepID INT PRIMARY KEY,
		DepName VARCHAR(50)	
	);

CREATE TABLE Employees
	(
		EmployeeID INT PRIMARY KEY,
		DepID INT FOREIGN KEY REFERENCES Departments (DepID),
		Surname VARCHAR(40),
		EmployeeName VARCHAR(30),
		Birthdate DATETIME,
		Height FLOAT,
		BossID INT
	);

CREATE TABLE Salaries
	(
		SalaryID INT PRIMARY KEY,
		PersonID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
		Gross MONEY,
		SalaryDate DATETIME
	);

CREATE TABLE Bonuses
	(
		BonusID INT PRIMARY KEY,
		PersonID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
		Descript VARCHAR(100)
	);																

/* Creating a junk/redundant table to show the use of []s. */

CREATE TABLE [percent]
	(
		[Birth Date] DATETIME,
		[50] INT,
		[col*] INT
	);

/* Permanently and irrevocably deleted the junk table [percent]. */

DROP TABLE [percent];