CREATE TABLE [AdmInd].[MasterIndicador]
(
[KeyMasterIndicador] [bigint] NOT NULL IDENTITY(1, 1),
[KeyIndicador] [bigint] NOT NULL,
[KeyVersion] [bigint] NOT NULL,
[KeyInstitucion] [bigint] NOT NULL,
[KeyFuenteInformacion] [bigint] NOT NULL,
[KeyFrecuencia] [bigint] NOT NULL,
[KeyEstado] [int] NOT NULL,
[KeyCompromiso] [bigint] NULL,
[Mensaje] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL,
[JSON] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyDesagregacion] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[MasterIndicador] ADD CONSTRAINT [PK_MasterIndicador] PRIMARY KEY CLUSTERED  ([KeyMasterIndicador]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla que sirve de union entre las partes fundamenteales del sistema, tambien es la encargada de realizar las notificando según el evento ejecutado.', 'SCHEMA', N'AdmInd', 'TABLE', N'MasterIndicador', NULL, NULL
GO
