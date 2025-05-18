/*Find the first 10 actors.*/
SELECT
	CONCAT(a.first_name, a.last_name) actors
FROM
	actor a
LIMIT 10;