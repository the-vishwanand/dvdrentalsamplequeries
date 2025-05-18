/*List rentals made on weekends.*/
SELECT
	r.rental_id, r.rental_date, TO_CHAR(r.rental_date, 'day') as day_of_weekend
FROM 
	rental r
WHERE day_of_weekend ILIKE "Sunday"
OR day_of_weekend ILIKE "Saturday";