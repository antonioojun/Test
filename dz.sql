USE my_bd1

CREATE TABLE [Suppler](
[SupplerID] INT IDENTITY PRIMARY KEY,
[CompanyName]VARCHAR(1000),
[Country]VARCHAR(1000),
)
CREATE TABLE [Product](
[ProductID] INT IDENTITY PRIMARY KEY,
[ProductName]VARCHAR(1000),
[ProductCategory]VARCHAR(1000),
)
CREATE TABLE [Employee](
[EmployeeID] INT IDENTITY PRIMARY KEY,
[EmpLastName]VARCHAR(1000),
[MgrLastName]VARCHAR(1000),
)
CREATE TABLE [Customer](
[CustomerID] INT IDENTITY PRIMARY KEY,
[CompanyName]VARCHAR(1000),
[City]VARCHAR(1000),
[Country]VARCHAR(1000),
)
CREATE TABLE [Time](
[TimeID] INT IDENTITY PRIMARY KEY,
[Data]VARCHAR(1000),
[Year]VARCHAR(1000),
[Quarter]VARCHAR(1000),
[Month]VARCHAR(1000),
[Day]VARCHAR(1000),
)
CREATE TABLE [Oders_Fast](
[Oders_FastID] INT IDENTITY PRIMARY KEY,
[ProductID] INT FOREIGN KEY REFERENCES [Product]([ProductID]),
[CustomerID] INT FOREIGN KEY REFERENCES [Customer]([CustomerID]),
[EmployeeID] INT FOREIGN KEY REFERENCES [Employee]([EmployeeID]),
[TimeID] INT FOREIGN KEY REFERENCES [Time]([TimeID]),
[SupplerID] INT FOREIGN KEY REFERENCES [Suppler]([SupplerID]),
[Prise]VARCHAR(1000),
[Quarter]VARCHAR(1000),
)

INSERT INTO [Suppler]([CompanyName], [Country]) VALUES ('Green_day','Greenland');
INSERT INTO [Product]([ProductName], [ProductCategory]) VALUES ('Tree oak','Seed');
INSERT INTO [Employee]([EmpLastName], [MgrLastName]) VALUES ('Tom','Hap');
INSERT INTO [Customer]([CompanyName], [City],[Country]) VALUES ('Green_day','Nook','Greenland');
INSERT INTO [Time]([Data], [Year],[Quarter],[Month],[Day]) VALUES ('2023.05.20','2023',NULL,'May','20');
INSERT INTO [Oders_Fast]([Prise], [Quarter]) VALUES ('100$',NULL);
INSERT INTO [Suppler]([CompanyName], [Country]) VALUES ('Green_day','Greenland');
INSERT INTO [Product]([ProductName], [ProductCategory]) VALUES ('Tree oak','Seed');
INSERT INTO [Employee]([EmpLastName], [MgrLastName]) VALUES ('Tom','Hap');
INSERT INTO [Customer]([CompanyName], [City],[Country]) VALUES ('Green_day','Nook','Greenland');
INSERT INTO [Time]([Data], [Year],[Quarter],[Month],[Day]) VALUES ('2023.05.20','2023','2','May','20');
INSERT INTO [Oders_Fast]([Prise], [Quarter]) VALUES ('100$','2');
SELECT * FROM [Oders_Fast] INNER JOIN [Time] ON [Oders_Fast].[Oders_FastID] = [Time].[TimeID];
SELECT * FROM [Oders_Fast] LEFT JOIN [Time] ON [Oders_Fast].[Oders_FastID] = [Time].[TimeID];
SELECT * FROM [Oders_Fast] RIGHT JOIN [Time] ON [Oders_Fast].[Oders_FastID] = [Time].[TimeID];
SELECT * FROM [Oders_Fast] FULL OUTER JOIN [Time] ON [Oders_Fast].[Oders_FastID] = [Time].[TimeID];
SELECT * FROM [Oders_Fast] LEFT JOIN [Time] ON [Oders_Fast].[Quarter] = NULL ;
SELECT * FROM [Oders_Fast] RIGHT JOIN [Time] ON [Oders_Fast].[Quarter] = NULL ;
SELECT * FROM [Oders_Fast] FULL OUTER JOIN [Time] ON [Oders_Fast].[Quarter] = NULL;