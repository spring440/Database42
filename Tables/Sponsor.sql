IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Sponsor')
	DROP TABLE dbo.[Sponsor];

CREATE TABLE [dbo].[Sponsor](
	[Id] [int] IDENTITY NOT NULL,
	[SponsorName] [VARCHAR](100) NOT NULL,
	[SponsorLevelId] INT NOT NULL
) ;