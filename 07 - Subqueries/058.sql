/*Find the number of rentals made on the busiest rental day.*/
SELECT
	COUNT(r.rental_id), r.rental_date
FROM
	rental r
WHERE (r.rental_id) = (
	SELECT
		MAX(r.rental_id)
	FROM
		rental r)
GROUP BY r.rental_date;
	