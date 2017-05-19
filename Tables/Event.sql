IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Event')
	DROP TABLE dbo.[Event];

CREATE TABLE [dbo].[Event] (
	[Id] INT NOT NULL IDENTITY,
	[EventName] VARCHAR(100) NOT NULL,
	[EventDate] DATETIME NOT NULL,
	[CityId] INT NOT NULL,
	[RegionId] INT NOT NULL,
	[CreatedDate] DATETIME NOT NULL,
	[ModifiedDate] DATETIME NOT NULL,
	[DeletedDate] DATETIME NULL
);