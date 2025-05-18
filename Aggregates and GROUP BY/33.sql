/* Show the average rental rate per rating. */
SELECT
	AVG(f.rental_rate) as avg_rental_rate, f.rating
FROM
	film f
GROUP BY f.rating;