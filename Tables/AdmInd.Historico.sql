CREATE TABLE [AdmInd].[Historico]
(
[KeyHistorico] [bigint] NOT NULL IDENTITY(1, 1),
[KeyMasterIndicador] [bigint] NULL,
[Metrica] [decimal] (18, 4) NULL,
[IsHistorico] [bit] NULL CONSTRAINT [DF_Historico_IsHistorico] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Historico] ADD CONSTRAINT [PK_Historico] PRIMARY KEY CLUSTERED  ([KeyHistorico]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Historico] ADD CONSTRAINT [FK_Historico_MasterIndicador] FOREIGN KEY ([KeyMasterIndicador]) REFERENCES [AdmInd].[MasterIndicador] ([KeyMasterIndicador])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mantiene los históricos de las métricas de los indicadores por jerarquía ', 'SCHEMA', N'AdmInd', 'TABLE', N'Historico', NULL, NULL
GO
