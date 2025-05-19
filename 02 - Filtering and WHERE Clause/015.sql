/* List customers with a last name starting with 'S' */
SELECT 
	a.first_name, a.last_name
FROM
	actor a
WHERE
	a.last_name
ILIKE
	'S%';