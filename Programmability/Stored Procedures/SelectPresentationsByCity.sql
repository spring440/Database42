CREATE PROCEDURE dbo.SelectPresentationsByCity
	@City varchar(50)
AS
BEGIN
	BEGIN TRY

		SELECT P.Title,T.Description as [Track], E.EventName,C.CityName
		FROM Presentation P
		LEFT JOIN PresentationTrack PT
		ON PT.PresentationId = P.Id
		LEFT JOIN Track T
		ON T.Id = P.Id
		LEFT JOIN Event E
		ON E.Id = P.EventId
		LEFT JOIN City C
		ON C.Id = E.CityId
		WHERE C.CityName = @City
	
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