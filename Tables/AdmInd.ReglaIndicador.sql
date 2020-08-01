CREATE TABLE [AdmInd].[ReglaIndicador]
(
[KeyRegla] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Orden] [int] NOT NULL,
[KeyTipoComparaVL] [int] NOT NULL,
[KeyTipoAlertaVL] [int] NOT NULL,
[Valor] [decimal] (16, 2) NOT NULL,
[IsComparable] [bit] NOT NULL CONSTRAINT [DF__ReglaIndi__IsCom__2A164134] DEFAULT ((0)),
[IsPorcentual] [bit] NOT NULL CONSTRAINT [DF__ReglaIndi__IsPor__2B0A656D] DEFAULT ((0)),
[KeyIndicador] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[ReglaIndicador] ADD CONSTRAINT [PK__ReglaInd__D107B0EB8E62FAD5] PRIMARY KEY CLUSTERED  ([KeyRegla]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[ReglaIndicador] ADD CONSTRAINT [FK_ReglaIndicador_Indicador] FOREIGN KEY ([KeyIndicador]) REFERENCES [AdmInd].[Indicador] ([KeyIndicador])
GO
ALTER TABLE [AdmInd].[ReglaIndicador] ADD CONSTRAINT [FK_ReglaIndicador_ValorL] FOREIGN KEY ([KeyTipoComparaVL]) REFERENCES [MasterData].[ListValue] ([KeyValor])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Esta funcionalidad permite registrar los valores máximos y mínimos permitidos para el indicador, estos valores podrán ser reales o porcentuales, para tal efecto se usarán el promedio histórico del indicador. Así mismo se compara con la última medición y con el históricos de mediciones del indicador, esto será establecido configurable para indicar si se procederá o no a validar usando los rangos históricos y la última medición. ', 'SCHEMA', N'AdmInd', 'TABLE', N'ReglaIndicador', NULL, NULL
GO
