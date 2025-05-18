/*List all indexes on the 'rental' table.*/
SELECT
    indexname AS index_name,
    indexdef AS index_definition
FROM
    pg_indexes
WHERE
    tablename = 'rental';
