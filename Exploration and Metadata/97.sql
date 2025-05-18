/*List all column names and types in the 'customer' table.*/
SELECT
	column_name,
	data_type
FROM
	information_schema.columns
WHERE
	table_name = 'customer'
	AND table_schema = 'public';	