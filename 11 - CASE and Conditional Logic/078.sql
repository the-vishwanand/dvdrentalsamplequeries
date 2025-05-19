/*Label customers as 'Active' if they have made more than 5 rentals.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customers, COUNT(r.rental_id) as no_of_rentals, 
	CASE
		WHEN COUNT(r.rental_id) > 5 THEN 'Active'
		ELSE 'Not Active'
	END AS status
FROM
	customer c
JOIN rental r
	USING (customer_id)
JOIN inventory i
	USING(inventory_id)
JOIN film f
	USING(film_id)
GROUP BY customers;