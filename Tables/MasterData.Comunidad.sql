CREATE TABLE [MasterData].[Comunidad]
(
[KeyComunidad] [int] NOT NULL IDENTITY(1, 1),
[KeyMunicipio] [int] NOT NULL,
[Descripcion] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Poblacion] [float] NULL,
[mmAgua] [float] NULL CONSTRAINT [DF_Comunidad_mmAgua] DEFAULT ((0)),
[Temperatura] [float] NULL CONSTRAINT [DF_Comunidad_Temperatura] DEFAULT ((0)),
[Comentarios] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsLockRecord] [bit] NOT NULL CONSTRAINT [DF_Comunidad_IsLockRecord] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Comunidad] ADD CONSTRAINT [PK_Comunidad] PRIMARY KEY CLUSTERED  ([KeyComunidad]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Comunidad] ADD CONSTRAINT [FK_Comunidad_Municipio] FOREIGN KEY ([KeyMunicipio]) REFERENCES [MasterData].[Municipio] ([KeyMunicipio])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Comunidades de NIcaragua', 'SCHEMA', N'MasterData', 'TABLE', N'Comunidad', NULL, NULL
GO
