CREATE TABLE [MasterData].[Institucion]
(
[KeyInstitucion] [bigint] NOT NULL IDENTITY(1, 1),
[KeySector] [bigint] NOT NULL,
[Siglas] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Nombre] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KeyTipoInstitucion] [bigint] NOT NULL,
[Contacto] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Telefono] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Direccion] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Instituci__IsAct__2DB1C7EE] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Institucion] ADD CONSTRAINT [PK_Institucion] PRIMARY KEY CLUSTERED  ([KeyInstitucion]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Institucion] ADD CONSTRAINT [FK_Institucion_Sector] FOREIGN KEY ([KeySector]) REFERENCES [MasterData].[Sector] ([KeySector])
GO
ALTER TABLE [MasterData].[Institucion] ADD CONSTRAINT [FK_Institucion_TipoInstitucion] FOREIGN KEY ([KeyTipoInstitucion]) REFERENCES [MasterData].[TipoInstitucion] ([KeyTipoInstitucion])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las instituciones habilitadas para ingresar información en el INIDE-SEN', 'SCHEMA', N'MasterData', 'TABLE', N'Institucion', NULL, NULL
GO
