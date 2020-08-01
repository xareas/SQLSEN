CREATE TABLE [AdmInd].[Indicador]
(
[KeyIndicador] [bigint] NOT NULL,
[Codigo] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Nombre] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Descripcion] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Justificacion] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MetodoCalculo] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyGrupo] [int] NOT NULL,
[KeySubGrupo] [int] NOT NULL,
[KeyTipoValor] [int] NOT NULL,
[KeyCategoria] [int] NOT NULL,
[KeyUnidad] [int] NOT NULL,
[KeyPrioridadVL] [int] NOT NULL,
[KeyTipoVL] [int] NOT NULL,
[KeyEstado] [int] NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Indicador__IsAct__2739D489] DEFAULT ((1)),
[Comentario] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyTipoCalculoVL] [int] NULL,
[QueuePriority] [int] NULL CONSTRAINT [DF__Indicador__Queue__282DF8C2] DEFAULT ((100)),
[LastDateStart] [date] NULL,
[LastDateEnd] [date] NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [PK__Indicado__106A1F1258FD8AB5] PRIMARY KEY CLUSTERED  ([KeyIndicador]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_CategoriaIndicador] FOREIGN KEY ([KeyCategoria]) REFERENCES [MasterData].[CategoriaIndicador] ([KeyCategoria])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_Estado] FOREIGN KEY ([KeyEstado]) REFERENCES [Core].[Estado] ([KeyEstado])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_Grupo] FOREIGN KEY ([KeyGrupo]) REFERENCES [MasterData].[Grupo] ([KeyGrupo])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_SubGrupo] FOREIGN KEY ([KeySubGrupo]) REFERENCES [MasterData].[SubGrupo] ([KeySubGrupo])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_TipoValor] FOREIGN KEY ([KeyTipoValor]) REFERENCES [Core].[TipoValor] ([KeyTipoValor])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_UnidadMedida] FOREIGN KEY ([KeyUnidad]) REFERENCES [MasterData].[UnidadMedida] ([KeyUnidad])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_ValorL] FOREIGN KEY ([KeyPrioridadVL]) REFERENCES [MasterData].[ListValue] ([KeyValor])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_ValorL1] FOREIGN KEY ([KeyTipoVL]) REFERENCES [MasterData].[ListValue] ([KeyValor])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_ValorL2] FOREIGN KEY ([KeyTipoCalculoVL]) REFERENCES [MasterData].[ListValue] ([KeyValor])
GO
ALTER TABLE [AdmInd].[Indicador] ADD CONSTRAINT [FK_Indicador_ValorL3] FOREIGN KEY ([KeyTipoCalculoVL]) REFERENCES [MasterData].[ListValue] ([KeyValor])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar la información general de un indicador. ', 'SCHEMA', N'AdmInd', 'TABLE', N'Indicador', NULL, NULL
GO
