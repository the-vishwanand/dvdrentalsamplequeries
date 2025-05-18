/*Show films that have not been rented yet.*/
SELECT
	f.title
FROM film f
JOIN inventory i
	USING (film_id)
LEFT JOIN rental r
	USING (inventory_id)
WHERE rental_id is NULL;
