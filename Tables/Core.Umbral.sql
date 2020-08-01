CREATE TABLE [Core].[Umbral]
(
[KeyUmbral] [bigint] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Simbolo] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Umbral__IsActive__178D7CA5] DEFAULT ((1)),
[Comentarios] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserCreated] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserModified] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateModified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Core].[Umbral] ADD CONSTRAINT [PK__Umbral__D2ABB2BD0F0CC62A] PRIMARY KEY CLUSTERED  ([KeyUmbral]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar las Umbrales habilitadas para ingresar información en el INIDE-SEN.  
Los umbrales se usan para garantizar la calidad del dato del indicador. ', 'SCHEMA', N'Core', 'TABLE', N'Umbral', NULL, NULL
GO
