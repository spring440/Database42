IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Class')
	DROP TABLE dbo.[Class];

CREATE TABLE dbo.[Class](
	Id INT NOT NULL IDENTITY,
	Title NVARCHAR(150) NOT NULL,
	Description NVARCHAR(100) NULL,
	SpeakerId INT NOT NULL,
	LevelId INT NOT NULL,
	Duration INT NULL,
	EventId INT NULL
);