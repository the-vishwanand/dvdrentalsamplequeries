/*Show all table names in the database.*/
SELECT 
	table_name
FROM 
	information_schema.tables
WHERE 
	table_schema = 'public'
	AND table_type = 'BASE TABLE';