CREATE PROCEDURE dbo.InsertRole
	@description VARCHAR(100)
AS
BEGIN
	BEGIN TRY
		INSERT INTO dbo.[Role] (Description) 
		VALUES (@description);
	END TRY
	BEGIN CATCH
		/*
			New role with that description cannot be created.
		*/
	END CATCH
END