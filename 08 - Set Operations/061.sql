/*Find customers who rented 'ZOOLANDER FICTION' or 'ALONE TRIP'.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name), f.title
FROM
	customer c
JOIN rental r
	USING (customer_id)
JOIN inventory i
	USING (inventory_id)
JOIN film f
	USING (film_id)
WHERE f.title 
IN ('ZOOLANDER FICTION', 'ALONE TRIP');