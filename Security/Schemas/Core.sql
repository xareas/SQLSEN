CREATE SCHEMA [Core]
AUTHORIZATION [dbo]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Esquema que agrupa aquellas tablas que son parte del nucle del sistema, cualquier cambio en una de estas tablas puede tener concecuencias en la ejecucion del aplicativo', 'SCHEMA', N'Core', NULL, NULL, NULL, NULL
GO
