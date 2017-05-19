IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Person')
	DROP TABLE dbo.[Person];

CREATE TABLE [dbo].[Person] (
	[Id] INT NOT NULL IDENTITY,
	[FirstName] VARCHAR(100) NOT NULL,
	[LastName] VARCHAR(100) NOT NULL,
	[Email] VARCHAR(100) NOT NULL,
	[Address1] NVARCHAR(100) NULL,
	[Address2] NVARCHAR(100) NULL,
	[CityId] INT NULL,
	[State] VARCHAR(100) NOT NULL,
	[Country] VARCHAR(100) NOT NULL,
	[ZIP] VARCHAR(15) NULL
);