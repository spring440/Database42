IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Track')
	DROP TABLE dbo.[Track];

CREATE TABLE dbo.Track(
	Id INT NOT NULL IDENTITY,
	Description VARCHAR(50) NOT NULL
);