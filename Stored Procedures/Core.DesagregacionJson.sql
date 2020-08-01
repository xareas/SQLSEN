SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Core].[DesagregacionJson]
	@KeyDesagregacion int
	AS
BEGIN
	DECLARE @Json VARCHAR(MAX);
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SET @Json =(SELECT KeyDesagregacion, KeyEntidad, CodigoPadre FROM [Core].[DesagregacionEntidad] Where KeyDesagregacion = @KeyDesagregacion And IsSelect = 1
	FOR JSON AUTO)

	UPDATE Core.Desagregacion SET JSON = @Json WHERE KeyDesagregacion = @KeyDesagregacion;

END

GO
