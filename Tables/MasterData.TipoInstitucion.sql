CREATE TABLE [MasterData].[TipoInstitucion]
(
[KeyTipoInstitucion] [bigint] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Observacion] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[TipoInstitucion] ADD CONSTRAINT [PK__TipoInst__6690F1A1EFA769AA] PRIMARY KEY CLUSTERED  ([KeyTipoInstitucion]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar Gobierno Central, Gobierno Municipal, Poderes del Estado, Organismo Internacionales. ', 'SCHEMA', N'MasterData', 'TABLE', N'TipoInstitucion', NULL, NULL
GO
