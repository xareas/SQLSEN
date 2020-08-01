SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [Admon].[AuditLogTable]
	 @UserId                  INT
    ,@UserName				  VARCHAR(50)
	,@Action				  VARCHAR(50)
    ,@TableName				  VARCHAR(50)
	,@RowId					  INT
    ,@Module				  VARCHAR(50) = NULL
    ,@Page					  VARCHAR(50) = NULL
    ,@Changes				  VARCHAR(MAX) = NULL
AS
BEGIN
INSERT INTO [Admon].[AuditLog]
           ([UserId]
           ,[UserName]
		   ,[Action]
           ,[ChangedOn]
           ,[TablaName]
           ,[RowId]
           ,[Module]
           ,[Page]
           ,[Changes])
     VALUES
           (
		    @UserId    
		   ,@UserName
		   ,@Action
		   ,GetDate()	
		   ,@TableName	
		   ,@RowId		
		   ,@Module	
		   ,@Page		
		   ,@Changes	
		   )
END
GO
