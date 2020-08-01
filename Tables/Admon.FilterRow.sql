CREATE TABLE [Admon].[FilterRow]
(
[KeyFilterRow] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentarios] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[FilterRow] ADD CONSTRAINT [PK_FilterRow] PRIMARY KEY CLUSTERED  ([KeyFilterRow]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tipos de filtrado de los datos', 'SCHEMA', N'Admon', 'TABLE', N'FilterRow', NULL, NULL
GO
