/*List the number of rentals per month.*/
SELECT
	COUNT(r.rental_id), EXTRACT(MONTH FROM r.rental_date) as month_number
FROM 
	rental r
GROUP BY month_number;