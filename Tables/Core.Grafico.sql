CREATE TABLE [Core].[Grafico]
(
[KeyGrafico] [bigint] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Informacion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CodigoPropio] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Grafico__IsActiv__1A69E950] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[Grafico] ADD CONSTRAINT [PK__Grafico__6056A56A2CBC3AB3] PRIMARY KEY CLUSTERED  ([KeyGrafico]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las Gráficos habilitadas para ingresar información en el INIDE-SEN.', 'SCHEMA', N'Core', 'TABLE', N'Grafico', NULL, NULL
GO
