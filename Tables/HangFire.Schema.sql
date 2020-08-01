CREATE TABLE [HangFire].[Schema]
(
[Version] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[Schema] ADD CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED  ([Version]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite llevar la cantidad de esquemas en la base de datos para pode ejecutar tareas sobre ellos.', 'SCHEMA', N'HangFire', 'TABLE', N'Schema', NULL, NULL
GO
