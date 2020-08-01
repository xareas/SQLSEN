CREATE TABLE [MasterData].[Compromisos]
(
[KeyCompromiso] [bigint] NOT NULL IDENTITY(1, 1),
[KeyPrograma] [bigint] NOT NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Compromisos] ADD CONSTRAINT [PK__Compromi__0451D9A8AAC2D0E7] PRIMARY KEY CLUSTERED  ([KeyCompromiso]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Compromisos] ADD CONSTRAINT [FK_Compromisos_Programa] FOREIGN KEY ([KeyPrograma]) REFERENCES [MasterData].[Programa] ([KeyPrograma])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite Registrar los Compromisos obtenidos por los Programas en base a los indicadores.', 'SCHEMA', N'MasterData', 'TABLE', N'Compromisos', NULL, NULL
GO
