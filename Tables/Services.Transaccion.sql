CREATE TABLE [Services].[Transaccion]
(
[KeyTransaccion] [bigint] NOT NULL IDENTITY(1, 1),
[KeyInstitucion] [bigint] NOT NULL,
[KeyMasterIndicador] [bigint] NULL,
[KeyFuente] [bigint] NOT NULL,
[KeyIndicador] [bigint] NOT NULL,
[KeyPeriodoVL] [int] NOT NULL,
[ArchivoXlsx] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ArchivoXml] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyEstado] [int] NOT NULL,
[KeyTipoRecepcionVL] [int] NOT NULL,
[KeyUsuario] [int] NOT NULL,
[KeyUsuarioInput] [int] NULL,
[FechaInicio] [date] NULL,
[FechaFin] [date] NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateCreated] [datetime] NOT NULL,
[DateModified] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Services].[Transaccion] ADD CONSTRAINT [PK__Transacc__1DA60888C4259D50] PRIMARY KEY CLUSTERED  ([KeyTransaccion]) ON [PRIMARY]
GO
ALTER TABLE [Services].[Transaccion] ADD CONSTRAINT [FK_Transaccion_Estado] FOREIGN KEY ([KeyEstado]) REFERENCES [Core].[Estado] ([KeyEstado])
GO
ALTER TABLE [Services].[Transaccion] ADD CONSTRAINT [FK_Transaccion_FuenteInformacion] FOREIGN KEY ([KeyFuente]) REFERENCES [MasterData].[FuenteInformacion] ([KeyFuenteInformacion])
GO
ALTER TABLE [Services].[Transaccion] ADD CONSTRAINT [FK_Transaccion_Indicador] FOREIGN KEY ([KeyIndicador]) REFERENCES [AdmInd].[Indicador] ([KeyIndicador])
GO
ALTER TABLE [Services].[Transaccion] ADD CONSTRAINT [FK_Transaccion_Institucion] FOREIGN KEY ([KeyInstitucion]) REFERENCES [MasterData].[Institucion] ([KeyInstitucion])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registar la transcaccion enviada por la institicion ya sea por servicio web o por archivo excel.', 'SCHEMA', N'Services', 'TABLE', N'Transaccion', NULL, NULL
GO
