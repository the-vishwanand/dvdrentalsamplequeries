/*Show the 5 shortest films.*/
SELECT
	f.title, f.length
FROM
	film f
ORDER BY f.length ASC
LIMIT 5;