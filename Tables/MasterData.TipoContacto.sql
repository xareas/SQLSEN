CREATE TABLE [MasterData].[TipoContacto]
(
[KeyTipoContacto] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[TipoContacto] ADD CONSTRAINT [PK__TipoCont__423AC40234438491] PRIMARY KEY CLUSTERED  ([KeyTipoContacto]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar o agrupar los contactos en una categoria.', 'SCHEMA', N'MasterData', 'TABLE', N'TipoContacto', NULL, NULL
GO
ALTER TABLE [MasterData].[TipoContacto] SET ( LOCK_ESCALATION = AUTO )
GO
