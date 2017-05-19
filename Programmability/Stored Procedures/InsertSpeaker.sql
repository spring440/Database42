CREATE PROCEDURE [dbo].InsertSpeaker
	@Speaker varchar(100)
AS
BEGIN
	BEGIN TRY

		DECLARE @speakerId INT
		SET @speakerId = (SELECT Id FROM Speaker WHERE SpeakerName = @Speaker)
		IF @speakerId IS NULL
		BEGIN
			INSERT INTO Speaker VALUES (@Speaker)
		END
	END TRY
	BEGIN CATCH

		DECLARE @ErrorMessage NVARCHAR(4000);
  		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

  		SELECT
    	@ErrorMessage = ERROR_MESSAGE(),
    	@ErrorSeverity = ERROR_SEVERITY(),
    	@ErrorState = ERROR_STATE();
  		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END


GO


