IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Role')
	DROP TABLE dbo.[Role];

CREATE TABLE [dbo].[Role] (
	Id INT NOT NULL IDENTITY,
	Description VARCHAR(100) NOT NULL
);