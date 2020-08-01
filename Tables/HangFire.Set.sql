CREATE TABLE [HangFire].[Set]
(
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Score] [float] NOT NULL,
[Value] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [HangFire].[Set] ADD CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED  ([Key], [Value]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite inicializar valores de la lista de trabajos programados.', 'SCHEMA', N'HangFire', 'TABLE', N'Set', NULL, NULL
GO
