/* List how many films each actor appears in. */
SELECT
	COUNT(f.title), CONCAT(a.first_name, a.last_name) as actor
FROM
	film f
JOIN film_actor fa
ON f.film_id = fa.film_id
JOIN actor a
ON	fa.actor_id = a.actor_id
GROUP BY actor
ORDER BY COUNT(f.title) DESC;