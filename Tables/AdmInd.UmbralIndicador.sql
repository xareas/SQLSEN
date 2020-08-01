CREATE TABLE [AdmInd].[UmbralIndicador]
(
[KeyUmbralIndicador] [bigint] NOT NULL IDENTITY(1, 1),
[KeyIndicador] [bigint] NOT NULL,
[KeyUmbral] [bigint] NOT NULL,
[Orden] [int] NOT NULL,
[Valor] [decimal] (16, 2) NOT NULL,
[Calificacion] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Color] [varchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[UmbralIndicador] ADD CONSTRAINT [PK__UmbralIn__65503F84D56AF9F3] PRIMARY KEY CLUSTERED  ([KeyUmbralIndicador]) ON [PRIMARY]
GO
ALTER TABLE [AdmInd].[UmbralIndicador] ADD CONSTRAINT [FK_UmbralIndicador_Indicador] FOREIGN KEY ([KeyIndicador]) REFERENCES [AdmInd].[Indicador] ([KeyIndicador])
GO
ALTER TABLE [AdmInd].[UmbralIndicador] ADD CONSTRAINT [FK_UmbralIndicador_Umbral] FOREIGN KEY ([KeyUmbral]) REFERENCES [Core].[Umbral] ([KeyUmbral])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permite registrar los umbrales mínimos y máximos del indicador. El sistema aplica las reglas de los umbrales según el orden en que se definan, se sale una vez que cumpla con la regla del umbral. Esto es parte de la infografía del indicador. ', 'SCHEMA', N'AdmInd', 'TABLE', N'UmbralIndicador', NULL, NULL
GO
