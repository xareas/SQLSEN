CREATE TABLE [Swap].[Evento]
(
[KeyEvento] [int] NOT NULL IDENTITY(1, 1),
[Fecha] [date] NOT NULL,
[Nombre] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Monto] [money] NOT NULL,
[KeyInstitucion] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Swap].[Evento] ADD CONSTRAINT [PK_Evento] PRIMARY KEY CLUSTERED  ([KeyEvento]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Entidad de Prueba', 'SCHEMA', N'Swap', 'TABLE', N'Evento', NULL, NULL
GO
