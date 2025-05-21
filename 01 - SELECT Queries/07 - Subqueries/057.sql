/*List actors who acted in the film 'ALONE TRIP'.*/
SELECT
	CONCAT(a.first_name,' ',a.last_name) as actors
FROM
	actor a
JOIN film_actor fa
	USING (actor_id)
JOIN film f
	USING(film_id)
WHERE f.title 
	ILIKE '%ALONE TRIP%';