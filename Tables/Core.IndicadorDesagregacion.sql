CREATE TABLE [Core].[IndicadorDesagregacion]
(
[KeyIndicaroDesagregacion] [bigint] NOT NULL IDENTITY(1, 1),
[KeyMasterIndicador] [bigint] NOT NULL,
[KeyDesagregacionEntidad] [bigint] NOT NULL,
[KeyElemento] [bigint] NOT NULL,
[CodigoPadre] [int] NULL,
[KeyEntidad] [bigint] NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSelect] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[IndicadorDesagregacion] ADD CONSTRAINT [PK__Indicado__D071EBF6C7846048] PRIMARY KEY CLUSTERED  ([KeyIndicaroDesagregacion], [KeyMasterIndicador]) ON [PRIMARY]
GO
ALTER TABLE [Core].[IndicadorDesagregacion] ADD CONSTRAINT [FK_IndicadorDesagregacion_MasterIndicador] FOREIGN KEY ([KeyMasterIndicador]) REFERENCES [AdmInd].[MasterIndicador] ([KeyMasterIndicador])
GO
