
CREATE TABLE Departements (
	DepartementsID INT IDENTITY(1,1) PRIMARY KEY,
	DepartementsName VARCHAR(50) NOT NULL
)

CREATE TABLE Projects(
	ProjectID INT IDENTITY(1,1) PRIMARY KEY,
	ProjectsName VARCHAR(50) NOT NULL,
	DepartementsID INT
	FOREIGN KEY(DepartementsID) REFERENCES Departements (DepartementsID)
	ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE Employee (
	EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR (50) NOT NULL,
	DepartementsID INT
	FOREIGN KEY(DepartementsID) REFERENCES Departements(DepartementsID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	ManagerID INT 
	FOREIGN KEY(ManagerID) REFERENCES Employee(EmployeeID)
)

CREATE TABLE Salaries (
	EmployeeID INT 
	FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	Salaries DECIMAL(10,2) NOT NULL
)

INSERT INTO [dbo].[Departements]([DepartementsName])
VALUES 
	('human resources'),
	('finance'),
	('IT')

INSERT INTO [dbo].[Employee] ([Name], [DepartementsID], [ManagerID])
VALUES 
	('Milda', 1, NULL ),--managerHR
	('Dini', 1, 1),
	('Haqi', 1, 1),
	('Alfi', 1, 1),
	('Rika', 1, 1),
	('Zeina', 2, NULL),--managerFinance
	('Ari', 2, 2),
	('Ilona', 2, 2),
	('Rama', 2, 2),
	('Dinda',2 , 2),
	('Dera', 3, NULL),--ManagerIT
	('Azka', 3, 3),
	('Nisa', 3, 3),
	('Anna', 3, 3)

INSERT INTO [dbo].[Employee] ([Name], [DepartementsID], [ManagerID])
VALUES 
	('Kiki', 3, 3 )

INSERT INTO [dbo].[Projects] ([ProjectsName], [DepartementsID])
VALUES 
	('Employee Satsification Survey', 1), 
	('Training Program', 1), 
	('Anual Budget Planning', 2), 
	('Financial Riview', 2), 
	('IT Infrastructure Upgrade', 3), 
	('Cybersecurity Echancements', 3), 
	('Requirment Drive', 1), 
	('Expanse Management System', 2), 
	('Data Backup and Recovery', 3), 
	('Emmployee OnVoarding Portal', 1)

INSERT INTO [dbo].[Salaries] ([EmployeeID], [Salaries])
VALUES
	(1, 600000.00), 
	(2, 700000.00), 
	(3, 650000.00),
	(4, 400000.00),
	(5, 550000.00),
	(6, 500000.00),
	(7, 850000.00),
	(8, 800000.00),
	(9, 780000.00),
	(10, 659000.00),
	(11, 870000.00),
	(12, 450000.00),
	(13, 690000.00), 
	(14, 695000.00), 
	(15, 785000.00) 


SELECT * FROM[dbo].[Departements]
SELECT * FROM[dbo].[Employee]
SELECT * FROM[dbo].[Projects]
SELECT * FROM[dbo].[Salaries]

