CREATE TABLE [MasterData].[Grupo]
(
[KeyGrupo] [int] NOT NULL IDENTITY(1, 1),
[Grupo] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Siglas] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CodigoGrupo] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Grupo__IsActive__55009F39] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Grupo] ADD CONSTRAINT [PK__Grupo__81E4E87B798E94BD] PRIMARY KEY CLUSTERED  ([KeyGrupo]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las Grupos habilitadas para ingresar información en el INIDE-SEN.', 'SCHEMA', N'MasterData', 'TABLE', N'Grupo', NULL, NULL
GO
