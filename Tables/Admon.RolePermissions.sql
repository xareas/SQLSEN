CREATE TABLE [Admon].[RolePermissions]
(
[RolePermissionId] [bigint] NOT NULL IDENTITY(1, 1),
[RoleId] [int] NOT NULL,
[PermissionKey] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[RolePermissions] ADD CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED  ([RolePermissionId]) ON [PRIMARY]
GO
ALTER TABLE [Admon].[RolePermissions] ADD CONSTRAINT [FK_RolePermissions_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Admon].[Roles] ([RoleId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla para establecer los permisos a cada uno de los roles del sistema.', 'SCHEMA', N'Admon', 'TABLE', N'RolePermissions', NULL, NULL
GO
