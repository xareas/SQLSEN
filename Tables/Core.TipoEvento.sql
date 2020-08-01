CREATE TABLE [Core].[TipoEvento]
(
[KeyTipoEvento] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[TipoEvento] ADD CONSTRAINT [PK__TipoEven__C5DFD47EEDC3A3EE] PRIMARY KEY CLUSTERED  ([KeyTipoEvento]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar los tipo de eventos asociados a un estado del indicador.', 'SCHEMA', N'Core', 'TABLE', N'TipoEvento', NULL, NULL
GO
