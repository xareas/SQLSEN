CREATE TABLE [MasterData].[Sexo]
(
[KeySexo] [int] NOT NULL IDENTITY(1, 1),
[Siglas] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Descripcion] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentarios] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Sexo] ADD CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED  ([KeySexo]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexo de la persona', 'SCHEMA', N'MasterData', 'TABLE', N'Sexo', NULL, NULL
GO
