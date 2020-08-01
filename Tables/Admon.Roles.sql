CREATE TABLE [Admon].[Roles]
(
[RoleId] [int] NOT NULL IDENTITY(1, 1),
[RoleName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[Roles] ADD CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED  ([RoleId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla de roles del usuario', 'SCHEMA', N'Admon', 'TABLE', N'Roles', NULL, NULL
GO
