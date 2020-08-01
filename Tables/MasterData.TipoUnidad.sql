CREATE TABLE [MasterData].[TipoUnidad]
(
[KeyTipoUnidad] [int] NOT NULL IDENTITY(1, 1),
[Siglas] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[TipoUnidad] ADD CONSTRAINT [PK__TipoUnid__00DA0D6B4BE2FDB4] PRIMARY KEY CLUSTERED  ([KeyTipoUnidad]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite agrupar las unidades de medidas por ejemplo en medidas de area, volumen, etc.', 'SCHEMA', N'MasterData', 'TABLE', N'TipoUnidad', NULL, NULL
GO
ALTER TABLE [MasterData].[TipoUnidad] SET ( LOCK_ESCALATION = AUTO )
GO
