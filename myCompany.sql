/* Ariez Othus*/
/* The MyCompany Database inclused the Department values for my company, including unique linking IDs for my departments, employees, salaries and types of bonuses. */

/* The CREATE DATABASE statement creates a database with a given name. */
	
CREATE DATABASE myCompany;											--created a database with the name of myCompany.

/* Just like with Java, remember to terminate all your statements with a semicolon. */

/* SQL is not case sensitive: Choice of case, spacing, tabs, and linebreaks is 100% for legibilty and style */

/* The USE keyword is used to select a database. */

USE myCompany;														--selected my database I just created

/* To create a new table, enter the keywords CREATE TABLE tableName (firstColumnName dataType optionalConstraints). */

CREATE TABLE Departments											--created a table named "Departments".

	(																--opening the Department table for the input of parameters.
		DepID INT PRIMARY KEY,										--input a column into my database, named it "DepID" set the data type to INT, and set it to be the primary key.

/* Commas are used as separators, there is no specific rule for placing commas at the end of a line or at the beginning. */

		DepName VARCHAR(50)											--input a column named DepName and set the data type to a Variable Character Fields.
	);																--done inputing parameters into Departments, for now. REMEMBER YOUR SEMICOLONS, JUST LIKE WITH JAVA!

CREATE TABLE Employees												--created a table named "Employees".
	(																--opening the Employees table for the input of parameters.
		EmployeeID INT PRIMARY KEY,									--input a column into my database, named it "EmployeeID", set the data type for the columns to Integer Feilds, and set it to be the primary key.
		DepID INT FOREIGN KEY REFERENCES Departments (DepID),		--created a foreign key that references the primary key we created in Departments called DepID.
		Surname VARCHAR(40),										--input a column named Surname and set the data type to a Variable Character Fields.
		EmployeeName VARCHAR(30),									--input a column named EmployeeName and set the data type to  Variable Character Fields.
		Birthdate DATETIME,											--input a column named Birthdate and set the data type to Dates and Times.
		Height FLOAT,												--input a column named Height and set the data type to Floating Point Feilds.
		BossID INT													--input a column named BossID and set the data type to Integer Feilds.
	);																--done inputing parameters into Employees, for now. 

CREATE TABLE Salaries												--created a table named "Salaries"
	(																--opening the Salaries table for the input of parameters.
		SalaryID INT PRIMARY KEY,									--input a column named SalaryID and set the data type to integer, and set it to be the primary key
		PersonID INT FOREIGN KEY REFERENCES Employees(EmployeeID),	--input a column named PersonID and set the data type to integer.
		Gross MONEY,												--input a column named Gross and set the data type to money.
		SalaryDate DATETIME											--input a column named SalaryDate and set the data type to Data and Time.
	);																--done inputing parameters into Salaries and for now. 

CREATE TABLE Bonuses												--created a table named Bonuses
	(																--opening the Bonuses table for input of parameters.
		BonusID INT PRIMARY KEY,									--input a column named BonusID
		PersonID INT FOREIGN KEY REFERENCES Employees(EmployeeID),	--input a column named PersonID
		Descript VARCHAR(100)										--input a column named Descript
	);																--done inputing parameters into Bonuses for now

/* you cannot use numbers within, special characters within, or use keywords as column or table names in T-SQL unless you enclose them in []s, this is not available in all versions of SQL */

CREATE TABLE [percent]												--creating a junk/redundant table to show the use of []s
	(
		[Birth Date] DATETIME,
		[50] INT,
		[col*] INT
	);

DROP TABLE [percent];