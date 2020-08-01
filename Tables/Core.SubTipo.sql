CREATE TABLE [Core].[SubTipo]
(
[KeySubTipo] [bigint] NOT NULL IDENTITY(1, 1),
[KeyGrafico] [bigint] NOT NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Clase] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Informacion] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentario] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[SubTipo] ADD CONSTRAINT [PK__SubTipo__0062B785C0D632D8] PRIMARY KEY CLUSTERED  ([KeySubTipo]) ON [PRIMARY]
GO
ALTER TABLE [Core].[SubTipo] ADD CONSTRAINT [FK_SubTipo_Grafico] FOREIGN KEY ([KeyGrafico]) REFERENCES [Core].[Grafico] ([KeyGrafico])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite agrupar los Subtipos de Gráficos y estos tipos serán asociados al indicador. ', 'SCHEMA', N'Core', 'TABLE', N'SubTipo', NULL, NULL
GO
