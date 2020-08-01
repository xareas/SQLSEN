CREATE TABLE [AdmInd].[Documento]
(
[KeyDocumento] [bigint] NOT NULL IDENTITY(1, 1),
[Nombre] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PathFileServer] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentario] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyIndicador] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Documento] ADD CONSTRAINT [PK__Document__9B44518C0B518C90] PRIMARY KEY CLUSTERED  ([KeyDocumento]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Documento] ADD CONSTRAINT [FK_Documento_Indicador] FOREIGN KEY ([KeyIndicador]) REFERENCES [AdmInd].[Indicador] ([KeyIndicador])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite agregar al indicador de información documental del indicador, preferiblemente se agregará archivos de tipo PDF.  ', 'SCHEMA', N'AdmInd', 'TABLE', N'Documento', NULL, NULL
GO
