CREATE TABLE [MasterData].[Region]
(
[KeyRegion] [int] NOT NULL IDENTITY(1, 1),
[Siglas] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Descripcion] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CodigoIPSA] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comentarios] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Region] ADD CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED  ([KeyRegion]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clasificacion de zonas por departamento', 'SCHEMA', N'MasterData', 'TABLE', N'Region', NULL, NULL
GO
