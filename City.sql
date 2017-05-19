IF EXISTS (SELECT * FROM sys.tables WHERE name = 'City')
	DROP TABLE dbo.[City];

CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](100) NOT NULL
) ;