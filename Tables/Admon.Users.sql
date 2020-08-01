CREATE TABLE [Admon].[Users]
(
[UserId] [int] NOT NULL IDENTITY(1, 1),
[Username] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DisplayName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeySexo] [int] NULL,
[Telefono] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Source] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PasswordHash] [nvarchar] (86) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PasswordSalt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastDirectoryUpdate] [datetime] NULL,
[UserImage] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyDepartamento] [int] NULL,
[KeyMunicipio] [int] NULL,
[KeyInstitucion] [bigint] NULL,
[Cargo] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cedula] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Token] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsExternalService] [bit] NOT NULL CONSTRAINT [DF_Users_IsExternalService_1] DEFAULT ((0)),
[KeyFilterRow] [int] NULL,
[FilterValue] [int] NULL,
[KeyTipoCuenta] [int] NULL,
[Comentarios] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [smallint] NOT NULL CONSTRAINT [DF_Users_IsActive] DEFAULT ((1)),
[InsertDate] [datetime] NOT NULL,
[InsertUserId] [int] NOT NULL,
[UpdateDate] [datetime] NULL,
[UpdateUserId] [int] NULL,
[RefreshToken] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RefreshTokenExpiryTime] [datetime2] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Admon].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([UserId]) ON [PRIMARY]
GO
ALTER TABLE [Admon].[Users] ADD CONSTRAINT [FK_Users_Departamento] FOREIGN KEY ([KeyDepartamento]) REFERENCES [MasterData].[Departamento] ([KeyDepartamento])
GO
ALTER TABLE [Admon].[Users] ADD CONSTRAINT [FK_Users_Institucion] FOREIGN KEY ([KeyInstitucion]) REFERENCES [MasterData].[Institucion] ([KeyInstitucion])
GO
ALTER TABLE [Admon].[Users] ADD CONSTRAINT [FK_Users_Municipio] FOREIGN KEY ([KeyMunicipio]) REFERENCES [MasterData].[Municipio] ([KeyMunicipio])
GO
ALTER TABLE [Admon].[Users] ADD CONSTRAINT [FK_Users_Sexo] FOREIGN KEY ([KeySexo]) REFERENCES [MasterData].[Sexo] ([KeySexo])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tabla de Usuarios', 'SCHEMA', N'Admon', 'TABLE', N'Users', NULL, NULL
GO
