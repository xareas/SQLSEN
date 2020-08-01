CREATE TABLE [MasterData].[Sector]
(
[KeySector] [bigint] NOT NULL IDENTITY(1, 1),
[Descripcion] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Observacion] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[Sector] ADD CONSTRAINT [PK__Sector__2BB242A283925B8E] PRIMARY KEY CLUSTERED  ([KeySector]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sector al que pertenece la institucion (Medioamiente, Productivo..etc) ', 'SCHEMA', N'MasterData', 'TABLE', N'Sector', NULL, NULL
GO
