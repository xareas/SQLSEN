CREATE TABLE [Admon].[VersionInfo]
(
[Version] [bigint] NOT NULL,
[AppliedOn] [datetime] NULL,
[Description] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Versiones de las Migraciones', 'SCHEMA', N'Admon', 'TABLE', N'VersionInfo', NULL, NULL
GO
