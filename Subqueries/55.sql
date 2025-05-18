/*Show the top 5 most rented films.*/
SELECT
	f.title, COUNT(r.rental_id) as no_of_rentals
FROM
	film f
JOIN inventory i
	USING film_id
JOIN rental r
	USING inventory_id
GROUP BY f.title;
ORDER BY no_of_rentals DESC;
LIMIT 5;