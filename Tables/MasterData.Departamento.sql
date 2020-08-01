CREATE TABLE [MasterData].[Departamento]
(
[KeyDepartamento] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CodigoInec] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyRegion] [int] NOT NULL,
[KeyDelegacion] [int] NOT NULL,
[Poblacion] [int] NULL CONSTRAINT [DF_Departamento_Poblacion] DEFAULT ((0)),
[Superficie] [float] NULL CONSTRAINT [DF_Departamento_Superficie] DEFAULT ((0)),
[Comentarios] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Departamento] ADD CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED  ([KeyDepartamento]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Listado de Departamentos', 'SCHEMA', N'MasterData', 'TABLE', N'Departamento', NULL, NULL
GO
