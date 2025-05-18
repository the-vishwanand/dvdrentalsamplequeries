/*Find films with the word 'dog' in the title(case-insensitive).*/
SELECT
	f.title
FROM 
	film f
WHERE f.title
ILIKE '%dog%';