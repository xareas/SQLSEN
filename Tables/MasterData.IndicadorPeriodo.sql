CREATE TABLE [MasterData].[IndicadorPeriodo]
(
[KeyIndicadorPeriodo] [bigint] NOT NULL IDENTITY(1, 1),
[KeyMasterIndicador] [bigint] NOT NULL,
[NombrePeriodo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Anio] [int] NOT NULL,
[FechaInicio] [date] NOT NULL,
[FechaFin] [date] NOT NULL,
[IsActive] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MasterData].[IndicadorPeriodo] ADD CONSTRAINT [PK_IndicadorPeriodo] PRIMARY KEY CLUSTERED  ([KeyIndicadorPeriodo]) ON [PRIMARY]
GO
