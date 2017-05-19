IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Region')
	DROP TABLE dbo.[Region];

CREATE TABLE dbo.Region (
	Id INT NOT NULL IDENTITY,
	RegionName VARCHAR(50) NOT NULL,
	CreatedDate DATETIME NOT NULL,
	ModifiedDate DATETIME NOT NULL,
	DeletedDate DATETIME NULL
);