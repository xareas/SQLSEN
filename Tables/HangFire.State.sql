CREATE TABLE [HangFire].[State]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[JobId] [bigint] NOT NULL,
[Name] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Reason] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedAt] [datetime] NOT NULL,
[Data] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[State] ADD CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED  ([JobId], [Id]) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[State] ADD CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY ([JobId]) REFERENCES [HangFire].[Job] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar el estado de cada una de las tareas creadas.', 'SCHEMA', N'HangFire', 'TABLE', N'State', NULL, NULL
GO
