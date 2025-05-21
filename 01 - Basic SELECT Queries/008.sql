/* List all the films that are rated 'G'. */
SELECT
	f.title,f.rating
FROM
	film f
WHERE
	rating = 'G';