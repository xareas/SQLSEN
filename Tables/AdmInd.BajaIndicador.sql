CREATE TABLE [AdmInd].[BajaIndicador]
(
[KeyBaja] [bigint] NOT NULL IDENTITY(1, 1),
[KeyUsuario] [bigint] NOT NULL,
[KeyMasterIndicador] [bigint] NOT NULL,
[KeyIndicador] [bigint] NULL,
[Motivos] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Fecha] [date] NOT NULL,
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserApprove] [int] NULL,
[DateApprove] [date] NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[BajaIndicador] ADD CONSTRAINT [PK__BajaIndi__1CAB71D42CA48E07] PRIMARY KEY CLUSTERED  ([KeyBaja]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[BajaIndicador] ADD CONSTRAINT [FK_BajaIndicador_MasterIndicador] FOREIGN KEY ([KeyMasterIndicador]) REFERENCES [AdmInd].[MasterIndicador] ([KeyMasterIndicador])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Esta funcionalidad permite mediante un proceso de solicitud y aprobación, proceder a dar de baja al indicador. ', 'SCHEMA', N'AdmInd', 'TABLE', N'BajaIndicador', NULL, NULL
GO
--comentarios
