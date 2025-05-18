/*Find rentals made in the month of may.*/
SELECT
	r.rental_id
FROM
	rental r
WHERE
	EXTRACT(month from rental_date) = 5;