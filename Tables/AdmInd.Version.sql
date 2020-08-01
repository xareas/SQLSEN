CREATE TABLE [AdmInd].[Version]
(
[KeyVersion] [bigint] NOT NULL IDENTITY(1, 1),
[Version] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SchemaMetadata] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [bit] NOT NULL CONSTRAINT [DF__Version__Status__2BFE89A6] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Version] ADD CONSTRAINT [PK__Version__94C7740C7701B3EC] PRIMARY KEY CLUSTERED  ([KeyVersion]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite indicar la versión del indicador y de esta forma el sistema determina como se espera recibir la información. ', 'SCHEMA', N'AdmInd', 'TABLE', N'Version', NULL, NULL
GO
