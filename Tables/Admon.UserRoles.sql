CREATE TABLE [Admon].[UserRoles]
(
[UserRoleId] [bigint] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[RoleId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[UserRoles] ADD CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED  ([UserRoleId]) ON [PRIMARY]
GO
ALTER TABLE [Admon].[UserRoles] ADD CONSTRAINT [FK_UserRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Admon].[Roles] ([RoleId])
GO
ALTER TABLE [Admon].[UserRoles] ADD CONSTRAINT [FK_UserRoles_UserId] FOREIGN KEY ([UserId]) REFERENCES [Admon].[Users] ([UserId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla de relacion de Roles del usuario', 'SCHEMA', N'Admon', 'TABLE', N'UserRoles', NULL, NULL
GO
