IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Speaker')
	DROP TABLE dbo.[Speaker];

CREATE TABLE [dbo].[Speaker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpeakerName] [varchar](100) NOT NULL
) ;