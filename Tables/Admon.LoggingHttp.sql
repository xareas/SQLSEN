CREATE TABLE [Admon].[LoggingHttp]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[UserSystem] [int] NULL,
[NameSystem] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserName] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IpOrigin] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Metodo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogTimeStart] [datetime] NULL,
[LogTimeFinish] [datetime] NULL,
[Esquema] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Host] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ruta] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QueryString] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Body] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Response] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ResponseStatus] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[LoggingHttp] ADD CONSTRAINT [PK__LoggingH__3214EC270CDF4AE0] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Logging http de baja nivel', 'SCHEMA', N'Admon', 'TABLE', N'LoggingHttp', NULL, NULL
GO
