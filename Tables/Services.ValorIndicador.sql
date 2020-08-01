CREATE TABLE [Services].[ValorIndicador]
(
[KeyValorIndicador] [bigint] NOT NULL IDENTITY(1, 1),
[KeyTransaccion] [bigint] NOT NULL,
[KeyDesagregacionElemento] [bigint] NULL,
[KeyElemento] [bigint] NULL,
[JerarquiaJSON] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Valor] [decimal] (18, 5) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Services].[ValorIndicador] ADD CONSTRAINT [PK_Recepcion] PRIMARY KEY CLUSTERED  ([KeyValorIndicador]) ON [PRIMARY]
GO
ALTER TABLE [Services].[ValorIndicador] ADD CONSTRAINT [FK_Recepcion_Transaccion] FOREIGN KEY ([KeyTransaccion]) REFERENCES [Services].[Transaccion] ([KeyTransaccion])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite guardar los valores enviados en la transaccion del canal seguro.', 'SCHEMA', N'Services', 'TABLE', N'ValorIndicador', NULL, NULL
GO
