/*List rentals with no return date.*/
SELECT
	r.rental_id
FROM
	rental r
WHERE
	return_date IS NULL;