CREATE TABLE [Core].[Entidad]
(
[KeyEntidad] [bigint] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KeyGrupoEntidad] [int] NOT NULL,
[Comentarios] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[Entidad] ADD CONSTRAINT [PK_Entidad] PRIMARY KEY CLUSTERED  ([KeyEntidad]) ON [PRIMARY]
GO
ALTER TABLE [Core].[Entidad] ADD CONSTRAINT [FK_Entidad_GrupoEntidad] FOREIGN KEY ([KeyGrupoEntidad]) REFERENCES [Core].[GrupoEntidad] ([KeyGrupoEntidad])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite agrupar las entidades como por ejemplo Departamentos, Municipios, etc
', 'SCHEMA', N'Core', 'TABLE', N'Entidad', NULL, NULL
GO
