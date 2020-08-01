CREATE TABLE [HangFire].[Server]
(
[Id] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Data] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastHeartbeat] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[Server] ADD CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registra el espacio de trabajo o nombre del servidor SQL donde se estan ejecutando las tareas.', 'SCHEMA', N'HangFire', 'TABLE', N'Server', NULL, NULL
GO
