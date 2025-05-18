/*List customers who rented 'ZOOLANDER FICTION' but not 'ALONE TRIP'.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customers, f.title as movie_name
FROM
	customer c
JOIN rental r
	USING (customer_id)
JOIN inventory i
	USING(inventory_id)
JOIN film f
	USING(film_id)
WHERE f.title ILIKE '%ZOOLANDER FICTION%'
EXCEPT
SELECT
	CONCAT(c.first_name,' ',c.last_name)as customers, f.title as movie_name
FROM
	customer c
JOIN rental r
	USING (customer_id)
JOIN inventory i
	USING(inventory_id)
JOIN film f
	USING(film_id)
WHERE f.title ILIKE '%ALONE TRIP%';