CREATE TABLE [HangFire].[Hash]
(
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExpireAt] [datetime2] NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[Hash] ADD CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED  ([Key], [Field]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite almacenar trabajos programados en el sistema y los valores de ejecucion por ejemplo periodos de ejecucion, tiempo de incio y finalizacion de tareas.', 'SCHEMA', N'HangFire', 'TABLE', N'Hash', NULL, NULL
GO
