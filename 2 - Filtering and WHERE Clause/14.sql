/* Display actors with the first name 'Nick'. */
SELECT 
	a.first_name, a.last_name 
FROM
	actor a
WHERE
	a.first_name 
LIKE 
	'%Nick';