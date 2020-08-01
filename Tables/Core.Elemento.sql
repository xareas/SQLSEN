CREATE TABLE [Core].[Elemento]
(
[KeyElemento] [bigint] NOT NULL IDENTITY(1, 1),
[Codigo] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Descripcion] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comentarios] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyEntidad] [bigint] NOT NULL,
[CodigoPadre] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[Elemento] ADD CONSTRAINT [PK_Elemento] PRIMARY KEY CLUSTERED  ([KeyElemento]) ON [PRIMARY]
GO
ALTER TABLE [Core].[Elemento] ADD CONSTRAINT [FK_Elemento_Elemento] FOREIGN KEY ([CodigoPadre]) REFERENCES [Core].[Elemento] ([KeyElemento])
GO
ALTER TABLE [Core].[Elemento] ADD CONSTRAINT [FK_Elementos_Entidad] FOREIGN KEY ([KeyEntidad]) REFERENCES [Core].[Entidad] ([KeyEntidad])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite guardar los detalles del elementos (Ejemplo Managua, Leon, etc)', 'SCHEMA', N'Core', 'TABLE', N'Elemento', NULL, NULL
GO
