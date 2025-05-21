/*List customers who rented the film 'ZOOLANDER FICTION'.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customers
FROM
	customer c
JOIN rental r
	USING (customer_id)
JOIN inventory i
	USING (inventory_id)
JOIN film f
	USING(film_id)
WHERE f.title 
	ILIKE '%ZOOLANDER FICTION%';