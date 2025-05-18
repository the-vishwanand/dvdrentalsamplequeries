/*Find the film with the highest rental rate.*/
SELECT
	f.title,f.rental_rate
FROM	
	film f
WHERE f.rental_rate = (
	SELECT MAX(f.rental_rate)
	FROM film f);