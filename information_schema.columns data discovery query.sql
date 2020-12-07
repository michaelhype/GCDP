select
    table_catalog AS databaseName,
    table_schema AS schemaName,
    table_name AS tableName,
    column_name AS columnName,
    ordinal_position AS ordinalPosition,
    column_default AS defaultValue,
    is_nullable AS nullable,
    data_type AS dataType,
    character_maximum_length AS [length],
    numeric_precision AS numericPrecision,
	numeric_scale as numericScale,
    datetime_precision AS dateTimePrecision
  FROM
    information_schema.columns
;

select * from INFORMATION_SCHEMA.COLUMNS;
