CREATE TABLE [Core].[DesagregacionEntidad]
(
[KeyDesagregacionEntidad] [bigint] NOT NULL IDENTITY(1, 1),
[KeyDesagregacion] [bigint] NOT NULL,
[KeyEntidad] [bigint] NOT NULL,
[IsSelect] [bit] NOT NULL,
[CodigoPadre] [bigint] NULL,
[Codigo] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[DesagregacionEntidad] ADD CONSTRAINT [PK_DesagregacionElemento] PRIMARY KEY CLUSTERED  ([KeyDesagregacionEntidad]) ON [PRIMARY]
GO
ALTER TABLE [Core].[DesagregacionEntidad] ADD CONSTRAINT [FK_DesagregacionElemento_Desagregacion] FOREIGN KEY ([KeyDesagregacion]) REFERENCES [Core].[Desagregacion] ([KeyDesagregacion])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite guardar la relacion entre la desagregacion y los elementos que la conforma con sus valores.', 'SCHEMA', N'Core', 'TABLE', N'DesagregacionEntidad', NULL, NULL
GO
