/* Show films with the word "Love" in the title. */
SELECT
	f.title
FROM
	film f
WHERE
	f.title
ILIKE
	'%Love%';