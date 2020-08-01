CREATE TABLE [Admon].[Cargo]
(
[KeyCargo] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentarios] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[Cargo] ADD CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED  ([KeyCargo]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tipos de cargos	', 'SCHEMA', N'Admon', 'TABLE', N'Cargo', NULL, NULL
GO
