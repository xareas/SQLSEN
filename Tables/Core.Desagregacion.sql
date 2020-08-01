CREATE TABLE [Core].[Desagregacion]
(
[KeyDesagregacion] [bigint] NOT NULL IDENTITY(1, 1),
[Nombre] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Codigo] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyTipoJerarquia] [int] NOT NULL,
[KeyEntidad] [bigint] NOT NULL,
[Nivel] [int] NOT NULL,
[Orden] [int] NULL,
[CodigoPadre] [bigint] NOT NULL CONSTRAINT [DF__Desagrega__Entid__58671BC9] DEFAULT ((0)),
[DesagregacionRoot] [bigint] NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Desagrega__IsAct__3F115E1A] DEFAULT ((1)),
[IsUltimoNivel] [bit] NOT NULL,
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL,
[JSON] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[Desagregacion] ADD CONSTRAINT [PK__Desagreg__549AC65851DA3321] PRIMARY KEY CLUSTERED  ([KeyDesagregacion]) ON [PRIMARY]
GO
ALTER TABLE [Core].[Desagregacion] ADD CONSTRAINT [FK_Desagregacion_Desagregacion] FOREIGN KEY ([CodigoPadre]) REFERENCES [Core].[Desagregacion] ([KeyDesagregacion])
GO
ALTER TABLE [Core].[Desagregacion] ADD CONSTRAINT [FK_Desagregacion_Entidad] FOREIGN KEY ([KeyEntidad]) REFERENCES [Core].[Entidad] ([KeyEntidad])
GO
ALTER TABLE [Core].[Desagregacion] ADD CONSTRAINT [FK_Desagregacion_TipoJerarquia] FOREIGN KEY ([KeyTipoJerarquia]) REFERENCES [MasterData].[TipoJerarquia] ([KeyTipoJerarquia])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite definir la desagregación del indicador por institución y fuente de información. Esta desagregación va asociada a la versión del indicador aprobada porque esta información del esquema aprobado es parte de la meta data de los servicios que se usan para la captura de la información (Excel,SOA(XML)). Suele llamarse también la Estructura Jerárquica, porque efectivamente es una estructura jerárquica, donde cada elemento de la jerarquía es un nodo. ', 'SCHEMA', N'Core', 'TABLE', N'Desagregacion', NULL, NULL
GO
