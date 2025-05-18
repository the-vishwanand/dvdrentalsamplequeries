/*Check for films with negative rental rates.*/
SELECT
	f.title, f.rental_rate
FROM
	film f
WHERE
	f.rental_rate < 0;