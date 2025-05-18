/* Show all films with a rental rate higher than 2.99. */
SELECT 
	f.title, f.rental_rate
FROM
	film f
WHERE
	f.rental_rate > 2.99; 