CREATE TABLE [Admon].[UserPreferences]
(
[UserPreferenceId] [int] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[PreferenceType] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[UserPreferences] ADD CONSTRAINT [PK_UserPreferences] PRIMARY KEY CLUSTERED  ([UserPreferenceId]) ON [PRIMARY]
GO
ALTER TABLE [Admon].[UserPreferences] ADD CONSTRAINT [FK_UserPreferences_Users] FOREIGN KEY ([UserId]) REFERENCES [Admon].[Users] ([UserId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla para guardar las preferencias de usuario o selecciones dentro del sistema', 'SCHEMA', N'Admon', 'TABLE', N'UserPreferences', NULL, NULL
GO
