CREATE TABLE [MasterData].[GrupoListValue]
(
[KeyGrupo] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[GrupoListValue] ADD CONSTRAINT [PK__Grupos__81E4E87BC5710286] PRIMARY KEY CLUSTERED  ([KeyGrupo]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite agrupar las lista de valores que no estan definidos en ninguna catalogo del aplicativo estos son mini catalogos.', 'SCHEMA', N'MasterData', 'TABLE', N'GrupoListValue', NULL, NULL
GO
