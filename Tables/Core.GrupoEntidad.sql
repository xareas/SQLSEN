CREATE TABLE [Core].[GrupoEntidad]
(
[KeyGrupoEntidad] [int] NOT NULL IDENTITY(1, 1),
[Descipcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[GrupoEntidad] ADD CONSTRAINT [PK_GrupoEntidad] PRIMARY KEY CLUSTERED  ([KeyGrupoEntidad]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite agrupa elementos de un mismo tipo (demograficos. etc)', 'SCHEMA', N'Core', 'TABLE', N'GrupoEntidad', NULL, NULL
GO
