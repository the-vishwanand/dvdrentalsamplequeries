/* Find the number of rentals for each film. */
SELECT
	f.title, COUNT(r.rental_id)
FROM
	film f
JOIN inventory i
	USING (film_id)
JOIN rental r
	USING (inventory_id)
GROUP BY f.title;