/* Find the language of each film. */
SELECT 
	f.title as Movie_Name,name as language
FROM
	film f
JOIN
	language l
ON
	f.language_id = l.language_id;