CREATE TABLE [Admon].[AuditLog]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Action] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChangedOn] [datetime] NOT NULL CONSTRAINT [DF_AuditLog_ChangedOn] DEFAULT (getdate()),
[TablaName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RowId] [bigint] NOT NULL,
[Module] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Page] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Changes] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Mensaje] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[AuditLog] ADD CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [Admon].[AuditLog] ADD CONSTRAINT [FK_AuditLog_Users] FOREIGN KEY ([UserId]) REFERENCES [Admon].[Users] ([UserId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Log de Auditoria', 'SCHEMA', N'Admon', 'TABLE', N'AuditLog', NULL, NULL
GO
