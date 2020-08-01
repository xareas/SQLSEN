CREATE TABLE [AdmInd].[MetaData]
(
[KeyMetaData] [bigint] NOT NULL IDENTITY(1, 1),
[Nombre] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Valor] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyIndicador] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[MetaData] ADD CONSTRAINT [PK__MetaData__AF8A5CC4171B806A] PRIMARY KEY CLUSTERED  ([KeyMetaData]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[MetaData] ADD CONSTRAINT [FK_MetaData_Indicador] FOREIGN KEY ([KeyIndicador]) REFERENCES [AdmInd].[Indicador] ([KeyIndicador])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite dotar al indicador de información extra para describir información del propio indicado', 'SCHEMA', N'AdmInd', 'TABLE', N'MetaData', NULL, NULL
GO
