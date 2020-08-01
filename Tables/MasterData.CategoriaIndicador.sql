CREATE TABLE [MasterData].[CategoriaIndicador]
(
[KeyCategoria] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Siglas] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Categoria__IsAct__4E53A1AA] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[CategoriaIndicador] ADD CONSTRAINT [PK__Categori__CCA0E92FA6F7F67B] PRIMARY KEY CLUSTERED  ([KeyCategoria]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las categorias o agrupamientos de los Indicadores.', 'SCHEMA', N'MasterData', 'TABLE', N'CategoriaIndicador', NULL, NULL
GO
ALTER TABLE [MasterData].[CategoriaIndicador] SET ( LOCK_ESCALATION = AUTO )
GO
