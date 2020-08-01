CREATE TABLE [MasterData].[Programa]
(
[KeyPrograma] [bigint] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Siglas] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NULL CONSTRAINT [DF__Programa__IsActi__0E04126B] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Programa] ADD CONSTRAINT [PK__Programa__8DC2697AAD3B6787] PRIMARY KEY CLUSTERED  ([KeyPrograma]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las Programas habilitadas para ingresar información en el INIDE-SEN, ', 'SCHEMA', N'MasterData', 'TABLE', N'Programa', NULL, NULL
GO
