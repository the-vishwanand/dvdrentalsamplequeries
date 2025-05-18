/*Show films and the names of their categories.*/
SELECT
	f.title as movie_name, c.name as category
FROM
	film f
JOIN film_category fc
USING (film_id)
JOIN category c
ON fc.category_id = c.category_id;