CREATE TABLE [AdmInd].[UserNotificacion]
(
[KeyUserNotificacion] [bigint] NOT NULL IDENTITY(1, 1),
[KeyNotificacion] [bigint] NOT NULL,
[KeyUsuario] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[UserNotificacion] ADD CONSTRAINT [PK_UserNotificacion] PRIMARY KEY CLUSTERED  ([KeyUserNotificacion]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[UserNotificacion] ADD CONSTRAINT [FK_UserNotificacion_Notificacion] FOREIGN KEY ([KeyNotificacion]) REFERENCES [AdmInd].[Notificacion] ([KeyNotificacion])
GO
ALTER TABLE [AdmInd].[UserNotificacion] ADD CONSTRAINT [FK_UserNotificacion_Users1] FOREIGN KEY ([KeyUsuario]) REFERENCES [Admon].[Users] ([UserId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite relacionar los usuario con las notificaciones, esta relacion pude ser varios usuarios una notificacion o viceversa.', 'SCHEMA', N'AdmInd', 'TABLE', N'UserNotificacion', NULL, NULL
GO
