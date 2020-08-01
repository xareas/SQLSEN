CREATE TABLE [Services].[TransaccionReglas]
(
[KeyTransaccionReglas] [bigint] NOT NULL IDENTITY(1, 1),
[KeyTranaccion] [bigint] NOT NULL,
[KeyReglas] [int] NOT NULL,
[Mensaje] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Services].[TransaccionReglas] ADD CONSTRAINT [PK_TransaccionReglas] PRIMARY KEY CLUSTERED  ([KeyTransaccionReglas]) ON [PRIMARY]
GO
ALTER TABLE [Services].[TransaccionReglas] ADD CONSTRAINT [FK_TransaccionReglas_ReglaIndicador] FOREIGN KEY ([KeyReglas]) REFERENCES [AdmInd].[ReglaIndicador] ([KeyRegla])
GO
ALTER TABLE [Services].[TransaccionReglas] ADD CONSTRAINT [FK_TransaccionReglas_Transaccion] FOREIGN KEY ([KeyTranaccion]) REFERENCES [Services].[Transaccion] ([KeyTransaccion])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite guardar los posibles errores que pueda tener una transaccion.', 'SCHEMA', N'Services', 'TABLE', N'TransaccionReglas', NULL, NULL
GO
