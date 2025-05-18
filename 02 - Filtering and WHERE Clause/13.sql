/* Find all films released in 2006. */
SELECT 
	f.title, f.release_year
FROM
	film f
WHERE
	f.release_year = 2006;