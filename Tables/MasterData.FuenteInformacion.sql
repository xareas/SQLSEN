CREATE TABLE [MasterData].[FuenteInformacion]
(
[KeyFuenteInformacion] [bigint] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KeyInstitucion] [bigint] NOT NULL,
[Comentario] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[FuenteInformacion] ADD CONSTRAINT [PK__FuenteIn__0B9B0EC557D02C8A] PRIMARY KEY CLUSTERED  ([KeyFuenteInformacion]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[FuenteInformacion] ADD CONSTRAINT [FK_FuenteInformacion_Institucion] FOREIGN KEY ([KeyInstitucion]) REFERENCES [MasterData].[Institucion] ([KeyInstitucion])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrrar las Fuentes de información registradas por las institución.', 'SCHEMA', N'MasterData', 'TABLE', N'FuenteInformacion', NULL, NULL
GO
ALTER TABLE [MasterData].[FuenteInformacion] SET ( LOCK_ESCALATION = AUTO )
GO
