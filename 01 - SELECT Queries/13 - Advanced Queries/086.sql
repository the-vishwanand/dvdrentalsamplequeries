/*Find the top-grossing film.*/
SELECT
	f.title, SUM(p.amount) as tr,
FROM 
	film f
JOIN inventory i
	USING(film_id)
JOIN rental r
	USING(inventory_id)
JOIN payment p
	USING(rental_id)
GROUP BY f.title
ORDER BY tr DESC
LIMIT 1;
