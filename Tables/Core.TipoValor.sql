CREATE TABLE [Core].[TipoValor]
(
[KeyTipoValor] [int] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__TipoValor__IsAct__14B10FFA] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[TipoValor] ADD CONSTRAINT [PK__TipoValo__BA2E00824E46B19F] PRIMARY KEY CLUSTERED  ([KeyTipoValor]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las Tipo de Valores del Indicador habilitados para ingresar información en el INIDE-SEN. ', 'SCHEMA', N'Core', 'TABLE', N'TipoValor', NULL, NULL
GO
