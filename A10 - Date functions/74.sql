/*Display the day of the week each rental was made.*/
SELECT
	r.rental_id,r.rental_date, TO_CHAR(r.rental_date, 'Day') AS day_of_week
FROM 
	rental r;