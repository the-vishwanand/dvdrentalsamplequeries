/* Display the 10 most expensive films.*/
SELECT
	f.title, f.rental_rate
FROM
	film f
ORDER BY f.rental_rate DESC
LIMIT 10;