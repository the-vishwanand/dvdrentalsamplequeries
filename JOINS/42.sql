/*Show films with their language name.*/
SELECT
	f.title, l.name
FROM
	film f
JOIN language l
ON f.language_id = l.language_id;