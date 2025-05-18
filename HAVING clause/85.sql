/*Find films rented more tha 20 times.*/
SELECT
	f.title, COUNT(r.rental_id) as no_of_times_rented
FROM
	film f
JOIN inventory i
	USING (film_id)
JOIN rental r
	USING(inventory_id)
GROUP BY f.title
	HAVING 
		COUNT(r.rental_id) > 20;