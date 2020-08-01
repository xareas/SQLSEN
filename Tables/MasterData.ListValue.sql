CREATE TABLE [MasterData].[ListValue]
(
[KeyValor] [int] NOT NULL IDENTITY(1, 1),
[KeyGrupo] [int] NOT NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[ListValue] ADD CONSTRAINT [PK__ListValu__9376753B141566DC] PRIMARY KEY CLUSTERED  ([KeyValor]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[ListValue] ADD CONSTRAINT [FK_ValorDominio_GrupoValorDominio] FOREIGN KEY ([KeyGrupo]) REFERENCES [MasterData].[GrupoListValue] ([KeyGrupo])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar la lista de valores de un grupo de valores asociados al indicador, minicatalogo de valores que por su naturaleza no se agrupan en tablas independientes.', 'SCHEMA', N'MasterData', 'TABLE', N'ListValue', NULL, NULL
GO
