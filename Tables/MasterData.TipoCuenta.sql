CREATE TABLE [MasterData].[TipoCuenta]
(
[KeyTipoCuenta] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Siglas] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[TipoCuenta] ADD CONSTRAINT [PK__TipoCuen__8BB542201E2C74EA] PRIMARY KEY CLUSTERED  ([KeyTipoCuenta]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Registra los tipos de cuentas de usuarios en el sistema, si un usuario es registrado desde el portal por default sera institucion.', 'SCHEMA', N'MasterData', 'TABLE', N'TipoCuenta', NULL, NULL
GO
