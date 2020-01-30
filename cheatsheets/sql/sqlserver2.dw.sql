CREATE MASTER KEY ENCRYPTION BY PASSWORD = '980AbctotheCloud427leet';

CREATE TABLE [dbo].[EmployeeBasic]
(
  [EmployeeID] int NOT NULL,
  [EmployeeName] varchar(30) NOT NULL,
  [DOB] date NOT NULL,
  [Address] varchar(50) NOT NULL,
  [BloodGroup] nvarchar(2) NOT NULL
)
WITH
(
  CLUSTERED COLUMNSTORE INDEX,
  DISTRIBUTION = HASH([EmployeeID])
);

CREATE TABLE [dbo].[Sales]
 (
   [ProductKey] int NOT NULL,
   [OrderDateKey] int NOT NULL,
   [CustomerKey] int NOT NULL,
   [PromotionKey] int NOT NULL,
   [SalesOrderNumber] nvarchar(20) NOT NULL,
   [OrderQuantity] smallint NOT NULL,
   [UnitPrice] money NOT NULL,
   [SalesAmount] money NOT NULL
 )
 WITH
 (
   CLUSTERED COLUMNSTORE INDEX,
   DISTRIBUTION = ROUND_ROBIN
 );

 CREATE TABLE [dbo].[States]
  (
    [StateKey] int NOT NULL,
    [State] nvarchar(20) NOT NULL
  )
  WITH
  (
    CLUSTERED COLUMNSTORE INDEX,
    DISTRIBUTION = REPLICATE
  );

  CREATE TABLE [dbo].[EmployeeRemuneration]
(
  [EmployeeID] int NOT NULL,
  [EmployeeDesignation] varchar(30) NOT NULL,
  [Salary] money NOT NULL,
  [DepartmentID] int NOT NULL
)
WITH
(
  CLUSTERED COLUMNSTORE INDEX,
  DISTRIBUTION = HASH([EmployeeID])
);

INSERT INTO [dbo].[EmployeeBasic] VALUES
(1,'Sam','01-06-1996','P-37, 5TH LANE, GLEN ALLEN,RICHMOND','O+');
INSERT INTO [dbo].[EmployeeBasic] VALUES (2,'Mary','03-06-1997','44 Shirley Ave. West Chicago, IL 60185','B+');
INSERT INTO [dbo].[EmployeeBasic] VALUES (3,'Nicole','12-01-1996','51 S.Magnolia St. Orlando, FL','B+');
INSERT INTO [dbo].[EmployeeBasic] VALUES (4,'Sanjay','10-03-1996','70 Bowman St. South Windsor,CT','O-');
INSERT INTO [dbo].[EmployeeBasic] VALUES (5,'Tania','08-06-1997','71 Pilgrim Avenue Chevy Chase,MD','A-');
INSERT INTO [dbo].[EmployeeBasic] VALUES (6,'Ben','03-07-1998','840 S. Windfall Rd. Elmont, NY 11003','O+');
INSERT INTO [dbo].[EmployeeRemuneration] VALUES (1,'Software Developer',4000,1);
INSERT INTO [dbo].[EmployeeRemuneration] VALUES (2,'Sr.Software Developer',6000,1);
INSERT INTO [dbo].[EmployeeRemuneration] VALUES (3,'Data Engineer',5000,2);
INSERT INTO [dbo].[EmployeeRemuneration] VALUES (4,'Data Scientist',8000,2);
INSERT INTO [dbo].[EmployeeRemuneration] VALUES (5,'Human Resource',4600,3);
INSERT INTO [dbo].[EmployeeRemuneration] VALUES (6,'Sr.Software Developer',6000,1);

select * into [dbo].[nick] from [dbo].[EmployeeBasic] 

SELECT * FROM [dbo].[EmployeeBasic];

SELECT * FROM [dbo].[EmployeeBasic]
WHERE YEAR(dob) = 1996;

SELECT * FROM [dbo].[EmployeeRemuneration];

SELECT EmployeeID, EmployeeName
FROM [dbo].[EmployeeBasic]
ORDER BY (EmployeeName);

SELECT EmployeeID, EmployeeDesignation, Salary, DepartmentID
FROM [dbo].[EmployeeRemuneration]
ORDER BY (Salary) DESC;

SELECT SUM(Salary) AS TOTALSUM, DepartmentID
FROM [dbo].[EmployeeRemuneration] GROUP BY(DepartmentID);


SELECT AVG(Salary) AS AverageSalary, DepartmentID
FROM [dbo].[EmployeeRemuneration] GROUP BY(DepartmentID);

SELECT MAX(Salary) AS MaximumSalary, DepartmentID
FROM [dbo].[EmployeeRemuneration] GROUP BY(DepartmentID);

SELECT MIN(Salary) AS MinimumSalary, DepartmentID
FROM [dbo].[EmployeeRemuneration] GROUP BY(DepartmentID);

SELECT COUNT(EmployeeID) AS NumberOfEmployees, DepartmentID
FROM [dbo].[EmployeeRemuneration] GROUP BY(DepartmentID);

SELECT
  ER.[EmployeeID],
  [EmployeeName],
  [EmployeeDesignation],
  [Salary]
FROM [dbo].[EmployeeRemuneration] ER
JOIN [dbo].[EmployeeBasic] EB ON ER.EmployeeID = EB.EmployeeID;

SELECT
  EB.EmployeeID, EmployeeName, EmployeeDesignation, Salary,DepartmentID
FROM
  [dbo].[EmployeeBasic] EB, [dbo].[EmployeeRemuneration] ER1
WHERE
  ER1.EmployeeID = EB.EmployeeID AND
  ER1.Salary = ( SELECT MAX(Salary)
    FROM [dbo].[EmployeeRemuneration] ER2
    WHERE ER2.DepartmentID = ER1.DepartmentID );

SELECT
  MAX(Salary) as Salary, DepartmentID
FROM
  [dbo].[EmployeeRemuneration] E1
WHERE
  E1.Salary < (SELECT MAX(Salary) FROM
    [dbo].[EmployeeRemuneration] AS E2
    WHERE E2.DepartmentID = E1.DepartmentID)
OR
  E1.Salary = (SELECT MAX(Salary) FROM
    [dbo].[EmployeeRemuneration] AS E2
    WHERE E2.DepartmentID = E1.DepartmentID
    HAVING COUNT(DISTINCT Salary) = 1)
GROUP BY(DepartmentID);

