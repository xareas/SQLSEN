CREATE TABLE [MasterData].[ContactoInstitucion]
(
[KeyContacto] [bigint] NOT NULL IDENTITY(1, 1),
[Nombre] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Cargo] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Telefono] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Direccion] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KeyTipoContacto] [int] NOT NULL,
[KeyInstitucion] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[ContactoInstitucion] ADD CONSTRAINT [PK__Contacto__822CE0F97EA1E1E3] PRIMARY KEY CLUSTERED  ([KeyContacto]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[ContactoInstitucion] ADD CONSTRAINT [FK_ContactoInstitucion_Institucion] FOREIGN KEY ([KeyInstitucion]) REFERENCES [MasterData].[Institucion] ([KeyInstitucion])
GO
ALTER TABLE [MasterData].[ContactoInstitucion] ADD CONSTRAINT [FK_ContactoInstitucion_TipoContacto] FOREIGN KEY ([KeyTipoContacto]) REFERENCES [MasterData].[TipoContacto] ([KeyTipoContacto])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar los contactos que pueden estar interactuando con los indicadores o que son personal de contacto para poder obtener el dato del indicador.', 'SCHEMA', N'MasterData', 'TABLE', N'ContactoInstitucion', NULL, NULL
GO
ALTER TABLE [MasterData].[ContactoInstitucion] SET ( LOCK_ESCALATION = AUTO )
GO
