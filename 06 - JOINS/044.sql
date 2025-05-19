/*List actors and the films they appeared in.*/
SELECT
	CONCAT(a.first_name,' ',a.last_name) as Actors, f.title
FROM
	actor a
JOIN film_actor fa
	ON a.actor_id = fa.actor_id
JOIN film f
	USING (film_id);