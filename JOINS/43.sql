/*Display each rental with the customer's name and film title.*/
SELECT
	CONCAT(c.first_name,' ', c.last_name) as Customer,f.title, r.rental_id
FROM
	film f
JOIN inventory i
	ON f.film_id = i.film_id /* USING (film_id)*/
JOIN rental r
	ON i.inventory_id = r.inventory_id
JOIN customer c
	ON r.customer_id = c.customer_id;