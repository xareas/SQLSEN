CREATE TABLE [MasterData].[TipoJerarquia]
(
[KeyTipoJerarquia] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[TipoJerarquia] ADD CONSTRAINT [PK__Jerarqui__770926CE83B1768A] PRIMARY KEY CLUSTERED  ([KeyTipoJerarquia]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite definir la jerarquia de la desagregacion de un Indicador', 'SCHEMA', N'MasterData', 'TABLE', N'TipoJerarquia', NULL, NULL
GO
