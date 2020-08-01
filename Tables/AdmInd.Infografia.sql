CREATE TABLE [AdmInd].[Infografia]
(
[KeyInfografia] [bigint] NOT NULL IDENTITY(1, 1),
[KeyGrafico] [bigint] NOT NULL,
[KeySubtipo] [bigint] NOT NULL,
[PorDefecto] [bit] NOT NULL CONSTRAINT [DF__Infografi__Defau__75035A77] DEFAULT ((0)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyIndicador] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Infografia] ADD CONSTRAINT [PK__Infograf__F63E70D91B7B4BE7] PRIMARY KEY CLUSTERED  ([KeyInfografia]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Infografia] ADD CONSTRAINT [FK_Infografia_Grafico] FOREIGN KEY ([KeyGrafico]) REFERENCES [Core].[Grafico] ([KeyGrafico])
GO
ALTER TABLE [AdmInd].[Infografia] ADD CONSTRAINT [FK_Infografia_Indicador] FOREIGN KEY ([KeyIndicador]) REFERENCES [AdmInd].[Indicador] ([KeyIndicador])
GO
ALTER TABLE [AdmInd].[Infografia] ADD CONSTRAINT [FK_Infografia_SubTipo] FOREIGN KEY ([KeySubtipo]) REFERENCES [Core].[SubTipo] ([KeySubTipo])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite agregar comportamientos a los indicadores y su correlación con otros indicadores. ', 'SCHEMA', N'AdmInd', 'TABLE', N'Infografia', NULL, NULL
GO
