CREATE TABLE [Core].[Estado]
(
[KeyEstado] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsLock] [bit] NOT NULL CONSTRAINT [DF__Estatus__IsLock__32AB8735] DEFAULT ((0)),
[IsEventInit] [bit] NOT NULL CONSTRAINT [DF__Estatus__IsEvent__339FAB6E] DEFAULT ((0)),
[IsFinishEvent] [bit] NOT NULL CONSTRAINT [DF__Estatus__IsFinis__3493CFA7] DEFAULT ((0)),
[Orden] [int] NOT NULL,
[IsActived] [bit] NULL CONSTRAINT [DF__Estatus__IsActiv__3587F3E0] DEFAULT ((0)),
[KeyTipoEvento] [int] NULL,
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MessageTemplate] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsInternalEvent] [bit] NULL,
[IsSendNotify] [bit] NULL,
[KeyPrioridadVL] [int] NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[Estado] ADD CONSTRAINT [PK__Estatus__824DBE24C72F19ED] PRIMARY KEY CLUSTERED  ([KeyEstado]) ON [PRIMARY]
GO
ALTER TABLE [Core].[Estado] ADD CONSTRAINT [FK_Estado_ValorL] FOREIGN KEY ([KeyPrioridadVL]) REFERENCES [MasterData].[ListValue] ([KeyValor])
GO
ALTER TABLE [Core].[Estado] ADD CONSTRAINT [FK_Estatus_TipoEvento] FOREIGN KEY ([KeyTipoEvento]) REFERENCES [Core].[TipoEvento] ([KeyTipoEvento])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar los posibles estatus que tendrá un indicador. Registrándose, Activo, Inactivo. 
Permite registrar los posibles estatus que tendrá un envió de información 
RECEPCIONADO,VALIDO,ASIGNACION/REVISION 
REVISADO,APROBADOPUBLICANDOSE,PUBLICADO ', 'SCHEMA', N'Core', 'TABLE', N'Estado', NULL, NULL
GO
