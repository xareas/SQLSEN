CREATE TABLE [MasterData].[Municipio]
(
[KeyMunicipio] [int] NOT NULL IDENTITY(1, 1),
[KeyDepartamento] [int] NOT NULL,
[KeyDelegacion] [int] NULL CONSTRAINT [DF_Municipio_KeyDelegacion] DEFAULT ((0)),
[KeyOficina] [int] NULL,
[Descripcion] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CodInec] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Poblacion] [float] NULL,
[Abreviatura] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comentarios] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyNucleo] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Municipio] ADD CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED  ([KeyMunicipio]) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Municipio] ADD CONSTRAINT [FK_Municipio_Departamento] FOREIGN KEY ([KeyDepartamento]) REFERENCES [MasterData].[Departamento] ([KeyDepartamento])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Municipios de Nicaragua', 'SCHEMA', N'MasterData', 'TABLE', N'Municipio', NULL, NULL
GO
