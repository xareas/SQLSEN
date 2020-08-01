CREATE TABLE [HangFire].[Counter]
(
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [int] NOT NULL,
[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar la cantida de veces que se a ejecutado una tarea programada en el sistema y el estado de ella', 'SCHEMA', N'HangFire', 'TABLE', N'Counter', NULL, NULL
GO
