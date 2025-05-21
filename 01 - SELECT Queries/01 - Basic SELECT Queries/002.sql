/* show all films in the inventory */
SELECT 
	f.title, f.film_id, i.inventory_id
FROM 
	film f
JOIN
	inventory i
ON
	f.film_id =i.film_id; /**/