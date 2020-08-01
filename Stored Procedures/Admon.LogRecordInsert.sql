SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE PROCEDURE [Admon].[LogRecordInsert]
(
    @userSystem AS INT=1,
	@nameSystem AS VARCHAR(100)='',
	@userName AS VARCHAR(200)='',
	@metodo AS VARCHAR(50),
	@logTimeStart AS DATETIME,
	@ipOrigin AS VARCHAR(100)='localhost',
	@esquema AS VARCHAR(200)='',
	@ruta AS VARCHAR(800)='',
	@host AS VARCHAR(200)='',
	@queryString AS VARCHAR(500)='',
	@body AS VARCHAR(MAX)='',
	@response AS VARCHAR(MAX)='',
	@statusResponse  AS INT=200
)
AS
    SET NOCOUNT ON;
   INSERT INTO Admon.[LoggingHttp]
   (
       UserSystem,
       NameSystem,
       UserName,
       LogTimeStart,
       LogTimeFinish,
	   IpOrigin,
	   metodo,
       Esquema,
       Host,
       Ruta,
       QueryString,
       Body,
       Response,
       ResponseStatus
   )
   VALUES
   (   @userSystem,         -- UserSystem - int
       @nameSystem,        -- NameSystem - varchar(100)
       @userName,        -- UserName - varchar(200)
       @logTimeStart, -- LogTimeStart - datetime
       GETDATE(), -- LogTimeFinish - datetime
	   @ipOrigin,
	   @Metodo,
       @esquema,        -- Esquema - varchar(200)
       @host,        -- Host - varchar(200)
       @ruta,        -- Path - varchar(800)
       @queryString,        -- QueryString - varchar(500)
       @body,        -- Body - varchar(max)
       @response,        -- Response - varchar(max)
       @statusResponse          -- ResponseStatus - int
   )
GO
