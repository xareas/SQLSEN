CREATE TABLE [AdmInd].[Notificacion]
(
[KeyNotificacion] [bigint] NOT NULL IDENTITY(1, 1),
[KeyMasterIndicador] [bigint] NOT NULL,
[KeyEstado] [int] NOT NULL,
[Mensaje] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Notificacion] ADD CONSTRAINT [PK_Notificacion] PRIMARY KEY CLUSTERED  ([KeyNotificacion]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Notificacion] ADD CONSTRAINT [FK_Notificacion_Estado] FOREIGN KEY ([KeyEstado]) REFERENCES [Core].[Estado] ([KeyEstado])
GO
ALTER TABLE [AdmInd].[Notificacion] ADD CONSTRAINT [FK_Notificacion_MasterIndicador] FOREIGN KEY ([KeyMasterIndicador]) REFERENCES [AdmInd].[MasterIndicador] ([KeyMasterIndicador])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite guardar notificaciones personalizadas para cada cambio de estado.', 'SCHEMA', N'AdmInd', 'TABLE', N'Notificacion', NULL, NULL
GO
