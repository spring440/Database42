CREATE PROC [dbo].[BackupDb]
AS 
BEGIN
	BACKUP DATABASE [s17guest42] TO  DISK = N'D:\SQL Saturday' WITH NOFORMAT, NOINIT,  NAME = N's17guest42-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
END

GO