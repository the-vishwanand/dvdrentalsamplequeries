/*Show films that are in both 'Action' and 'Comedy' categories.*/
SELECT
	f.title, c.name
FROM
	film f
JOIN film_category fc	
	USING (film_id)
JOIN category c
	USING(category_id)
WHERE c.name ILIKE '%Action%'
INTERSECT
SELECT
	f.title, c.name
FROM
	film f
JOIN film_category fc	
	USING (film_id)
JOIN category c
	USING(category_id)
WHERE c.name ILIKE '%Comedy%';