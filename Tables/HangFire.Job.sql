CREATE TABLE [HangFire].[Job]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[StateId] [bigint] NULL,
[StateName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvocationData] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Arguments] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedAt] [datetime] NOT NULL,
[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[Job] ADD CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar tareas programadas en el sistema,', 'SCHEMA', N'HangFire', 'TABLE', N'Job', NULL, NULL
GO
