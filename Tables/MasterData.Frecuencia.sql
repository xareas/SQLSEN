CREATE TABLE [MasterData].[Frecuencia]
(
[KeyFrecuencia] [bigint] NOT NULL IDENTITY(1, 1),
[Nombre] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KeyTipoRango] [int] NULL,
[Stepper] [int] NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Frecuenci__IsAct__603D47BB] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Frecuencia] ADD CONSTRAINT [PK__Frecuenc__4DE2AAE03F382B89] PRIMARY KEY CLUSTERED  ([KeyFrecuencia]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Frecuencia] ADD CONSTRAINT [FK_Frecuencia_TipoRangoFrecuencia] FOREIGN KEY ([KeyTipoRango]) REFERENCES [AdmInd].[TipoRangoFrecuencia] ([KeyTipoRango])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las Frecuencias de actualización de los datos para ingresar información en el INIDE-SEN, las frecuencias se utilizan en el administrador de indicadores, cuando se define la periodicidad de actualización de los datos del indicador. ', 'SCHEMA', N'MasterData', 'TABLE', N'Frecuencia', NULL, NULL
GO
ALTER TABLE [MasterData].[Frecuencia] SET ( LOCK_ESCALATION = AUTO )
GO
