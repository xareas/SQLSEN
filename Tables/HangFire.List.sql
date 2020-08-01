CREATE TABLE [HangFire].[List]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[List] ADD CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED  ([Key], [Id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite llevar la lista de tareas con sus valores y tiempo de ejecucion.', 'SCHEMA', N'HangFire', 'TABLE', N'List', NULL, NULL
GO
