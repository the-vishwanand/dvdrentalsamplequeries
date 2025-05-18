/*Display films and the inventory store they belong to.*/
SELECT
	f.title as movie, s.address_id
FROM
	film f
JOIN inventory i
	ON f.film_id = i.film_id
JOIN store s
	ON i.store_id = s.store_id;