IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Level')
	DROP TABLE dbo.[Level];

CREATE TABLE [dbo].[Level](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL
) ;