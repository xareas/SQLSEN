CREATE TABLE [Admon].[UserPermissions]
(
[UserPermissionId] [bigint] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[PermissionKey] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Granted] [bit] NOT NULL CONSTRAINT [DF_UserPermissions_Granted] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[UserPermissions] ADD CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED  ([UserPermissionId]) ON [PRIMARY]
GO
ALTER TABLE [Admon].[UserPermissions] ADD CONSTRAINT [FK_UserPermissions_UserId] FOREIGN KEY ([UserId]) REFERENCES [Admon].[Users] ([UserId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla para establecer los permisos a cada uno de los usuarios.', 'SCHEMA', N'Admon', 'TABLE', N'UserPermissions', NULL, NULL
GO
