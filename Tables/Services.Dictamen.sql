CREATE TABLE [Services].[Dictamen]
(
[KeyDictamen] [bigint] NOT NULL IDENTITY(1, 1),
[KeyTransaccion] [bigint] NOT NULL,
[KeyEstado] [int] NOT NULL,
[KeyCategoriaLV] [int] NULL,
[ResultadoJSON] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comentario] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateCreated] [datetime] NOT NULL,
[DateModified] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Services].[Dictamen] ADD CONSTRAINT [PK_Dicatamen] PRIMARY KEY CLUSTERED  ([KeyDictamen]) ON [PRIMARY]
GO
ALTER TABLE [Services].[Dictamen] ADD CONSTRAINT [FK_Dicatamen_Transaccion] FOREIGN KEY ([KeyTransaccion]) REFERENCES [Services].[Transaccion] ([KeyTransaccion])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite realizar un dictamen sobre la informacion recibida en la transaccion esto puede venir por XLS o SOA', 'SCHEMA', N'Services', 'TABLE', N'Dictamen', NULL, NULL
GO
