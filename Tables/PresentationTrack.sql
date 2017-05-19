IF EXISTS (SELECT * FROM sys.tables WHERE name = 'PresentationTrack')
	DROP TABLE dbo.[PresentationTrack];

CREATE TABLE dbo.PresentationTrack(
	Id INT NOT NULL IDENTITY,
	PresentationId INT NOT NULL,
	TrackId INT
);