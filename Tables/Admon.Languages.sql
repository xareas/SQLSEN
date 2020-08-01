CREATE TABLE [Admon].[Languages]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[LanguageId] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LanguageName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[Languages] ADD CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla que maneja los idiomas del sistema', 'SCHEMA', N'Admon', 'TABLE', N'Languages', NULL, NULL
GO
