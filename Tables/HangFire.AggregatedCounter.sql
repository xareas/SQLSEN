CREATE TABLE [HangFire].[AggregatedCounter]
(
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [bigint] NOT NULL,
[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[AggregatedCounter] ADD CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED  ([Key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar los valores y tiempo de expiracion de un contador de tareas.', 'SCHEMA', N'HangFire', 'TABLE', N'AggregatedCounter', NULL, NULL
GO
