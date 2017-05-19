CREATE PROCEDURE [dbo].InsertPresentation
	@Speaker varchar(50),@Presentation varchar(100)
AS
BEGIN
	BEGIN TRY

		DECLARE @speakerId INT
		DECLARE @presentationCheck INT
		DECLARE @newSpeakerId INT

		SET @speakerId = (SELECT Id FROM Speaker WHERE SpeakerName = @Speaker)

		IF @speakerId IS NULL
		BEGIN
			EXEC dbo.InsertSpeaker @speaker
			SET @newSpeakerId = @@IDENTITY


			INSERT INTO Presentation VALUES (@Presentation,NULL,@newSpeakerId,1,NULL,NULL)

		END	
		ELSE
		BEGIN
			INSERT INTO Presentation VALUES (@Presentation,NULL,@Speaker,1,NULL,NULL)
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


