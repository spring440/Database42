IF EXISTS (SELECT * FROM sys.tables WHERE name = 'SponsorLevel')
	DROP TABLE dbo.[SponsorLevel];

CREATE TABLE [dbo].[SponsorLevel](
	[Id] [int] IDENTITY NOT NULL,
	[SponsorLevelName] [VARCHAR](100) NOT NULL
) ;