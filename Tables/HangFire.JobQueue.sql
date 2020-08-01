CREATE TABLE [HangFire].[JobQueue]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[JobId] [bigint] NOT NULL,
[Queue] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FetchedAt] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[JobQueue] ADD CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED  ([Queue], [Id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar la cantidad y dias que se han ejecutados cada uno de los trabajos programados.', 'SCHEMA', N'HangFire', 'TABLE', N'JobQueue', NULL, NULL
GO
