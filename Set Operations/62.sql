/*Find customers who rented both 'ZOOLANDER FICTION' and 'ALONE TRIP'.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customers
FROM customer c
JOIN rental r
	USING (customer_id)
JOIN inventory i
	USING (inventory_id)
JOIN film f
	USING (film_id)
WHERE f.title 
	ILIKE '%ZOOLANDER FICTION%'
INTERSECT
	SELECT
		CONCAT(c.first_name,' ',c.last_name) as customers
	FROM customer c
	JOIN rental r
		USING (customer_id)
	JOIN inventory i
		USING (inventory_id)
	JOIN film f
		USING (film_id)
	WHERE f.title 
		ILIKE '%ALONE TRIP%';