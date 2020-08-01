SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [AdmInd].[InsertElementDesagregacion]
	@KeyMasterIndicador int,
	@KeyDesagregacion int
AS
BEGIN
	DECLARE @keyEntidad int,
			@entidad Varchar(150),
			@CodigoPadre int,
			@keyElemento int,
			@elemento Varchar(150)		

	BEGIN TRY
	BEGIN TRANSACTION 
		--Insertamos los elementos padre del movimiento
		DECLARE Mov CURSOR LOCAL FAST_FORWARD FOR 
		SELECT Entidad.KeyEntidad, Entidad.Descripcion
		FROM Core.DesagregacionEntidad
		INNER JOIN	Core.Entidad ON DesagregacionEntidad.KeyEntidad = Entidad.KeyEntidad
		WHERE DesagregacionEntidad.KeyDesagregacion = @KeyDesagregacion AND DesagregacionEntidad.IsSelect = 1
		ORDER BY Entidad.KeyEntidad
		
		OPEN Mov
		FETCH NEXT FROM Mov INTO @keyEntidad, @entidad
		   
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
		  
			INSERT INTO [Core].[IndicadorDesagregacion]
			   ([KeyMasterIndicador]
			   ,[KeyDesagregacionEntidad]
			   ,[KeyElemento]
			   ,[CodigoPadre]
			   ,[KeyEntidad]
			   ,[Descripcion]
			   ,[IsSelect])
			VALUES
			   (@KeyMasterIndicador
			   ,@KeyDesagregacion
			   ,@keyEntidad
			   ,Null
			   ,Null
			   ,@entidad
			   ,1)

		  FETCH NEXT FROM Mov INTO @keyEntidad, @entidad
		END

	COMMIT TRANSACTION --FIN DE LA TRANSACCION
	--LIBERAMOS LOS RECURSOS
	CLOSE Mov
	DEALLOCATE Mov

	--Insertar los elementos hijos del movimiento
	BEGIN TRANSACTION 
		--Insertamos los elementos padre del movimiento
		DECLARE Elem CURSOR LOCAL FAST_FORWARD FOR 
		SELECT	DesagregacionEntidad.KeyEntidad, Elemento.KeyElemento, Elemento.Descripcion, Elemento.CodigoPadre
		FROM Core.DesagregacionEntidad
		INNER JOIN Core.Elemento ON	DesagregacionEntidad.KeyEntidad = Elemento.KeyEntidad
		WHERE DesagregacionEntidad.IsSelect = 1 AND	DesagregacionEntidad.KeyDesagregacion = @KeyDesagregacion
		
		OPEN Elem
		FETCH NEXT FROM Elem INTO @keyEntidad, @keyElemento, @elemento, @CodigoPadre
		   
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
		  
			INSERT INTO [Core].[IndicadorDesagregacion]
			   ([KeyMasterIndicador]
			   ,[KeyDesagregacionEntidad]
			   ,[KeyElemento]
			   ,[CodigoPadre]
			   ,[KeyEntidad]
			   ,[Descripcion]
			   ,[IsSelect])
			VALUES
			   (@KeyMasterIndicador
			   ,@KeyDesagregacion
			   ,@keyElemento
			   ,@CodigoPadre
			   ,@keyEntidad
			   ,@elemento
			   ,1)

		  FETCH NEXT FROM Elem INTO @keyEntidad, @keyElemento, @Elemento, @CodigoPadre
		END

	COMMIT TRANSACTION --FIN DE LA TRANSACCION
	--LIBERAMOS LOS RECURSOS
	CLOSE Elem
	DEALLOCATE Elem
	
	END TRY

	
	 --CAPTURAMOS LOS ERRORES
	 BEGIN CATCH  
	  IF XACT_STATE() != 0 
		BEGIN
		  ROLLBACK TRANSACTION
		END
  
	   SELECT ERROR_NUMBER() AS ErrorNumber  ,ERROR_SEVERITY() AS ErrorSeverity  
		,ERROR_STATE() AS ErrorState ,ERROR_PROCEDURE() AS ErrorProcedure  
		,ERROR_LINE() AS ErrorLine  ,ERROR_MESSAGE() AS ErrorMessage;  

	 END CATCH	   

END
GO
