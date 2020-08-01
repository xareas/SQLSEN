CREATE TABLE [MasterData].[SubGrupo]
(
[KeySubGrupo] [int] NOT NULL IDENTITY(1, 1),
[KeyGrupo] [int] NOT NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentario] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[SubGrupo] ADD CONSTRAINT [PK__SubGrupo__1B68736AC3549D0B] PRIMARY KEY CLUSTERED  ([KeySubGrupo]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[SubGrupo] ADD CONSTRAINT [FK_SubGrupo_Grupo] FOREIGN KEY ([KeyGrupo]) REFERENCES [MasterData].[Grupo] ([KeyGrupo])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las Subgrupos asociadas y registradas por una institución. ', 'SCHEMA', N'MasterData', 'TABLE', N'SubGrupo', NULL, NULL
GO
