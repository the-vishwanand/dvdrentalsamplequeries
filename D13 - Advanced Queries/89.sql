/*Find actors who acted in the most number of films.*/
SELECT
	CONCAT(a.first_name,' ',a.last_name) as actors, COUNT(f.film_id) as no_of_movies
FROM
	actor a
JOIN film_actor fa
	USING(actor_id)
JOIN film f
	USING(film_id)
GROUP BY actors
ORDER BY no_of_movies DESC;