/*Find actors who have not acted in any film.*/
SELECT
	CONCAT(a.first_name,' ',a.last_name)as actors
FROM actor a
LEFT JOIN film_actor fa
	USING (actor_id)
WHERE fa.film_id IS NULL;
