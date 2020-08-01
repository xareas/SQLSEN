CREATE TABLE [AdmInd].[TipoRangoFrecuencia]
(
[KeyTipoRango] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comentario] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[TipoRangoFrecuencia] ADD CONSTRAINT [PK__TipoRang__C5634EB0F8E020DA] PRIMARY KEY CLUSTERED  ([KeyTipoRango]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite definir los tipos de rango en que se agruparan las frecuencias del indicador', 'SCHEMA', N'AdmInd', 'TABLE', N'TipoRangoFrecuencia', NULL, NULL
GO
ALTER TABLE [AdmInd].[TipoRangoFrecuencia] SET ( LOCK_ESCALATION = AUTO )
GO
