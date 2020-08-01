CREATE TABLE [MasterData].[UnidadMedida]
(
[KeyUnidad] [int] NOT NULL IDENTITY(1, 1),
[Siglas] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyTipoUnidad] [int] NULL,
[IsDecimal] [bit] NULL,
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[UnidadMedida] ADD CONSTRAINT [PK__UnidadMe__0235E10E9E3BEE76] PRIMARY KEY CLUSTERED  ([KeyUnidad]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[UnidadMedida] ADD CONSTRAINT [FK_UnidadMedida_TipoUnidad] FOREIGN KEY ([KeyTipoUnidad]) REFERENCES [MasterData].[TipoUnidad] ([KeyTipoUnidad])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las unidades de medida que se establecen para los indicadore', 'SCHEMA', N'MasterData', 'TABLE', N'UnidadMedida', NULL, NULL
GO
