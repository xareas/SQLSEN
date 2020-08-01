CREATE TABLE [Admon].[Exceptions]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[GUID] [uniqueidentifier] NOT NULL,
[ApplicationName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreationDate] [datetime] NOT NULL,
[Type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsProtected] [bit] NOT NULL CONSTRAINT [DF_Exceptions_IsProtected] DEFAULT ((1)),
[Host] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Url] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HTTPMethod] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPAddress] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Source] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Message] [nvarchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Detail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StatusCode] [int] NULL CONSTRAINT [DF__Exception__Statu__40F9A68C] DEFAULT (NULL),
[SQL] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DeletionDate] [datetime] NULL,
[FullJson] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ErrorHash] [int] NULL,
[DuplicateCount] [int] NOT NULL CONSTRAINT [DF_Exceptions_DuplicateCount] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[Exceptions] ADD CONSTRAINT [PK_Exceptions] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla para manejar excepciones en el sistema donde se pueden restringir acceso a usuarios a traves de nombre de equipo o IP', 'SCHEMA', N'Admon', 'TABLE', N'Exceptions', NULL, NULL
GO
