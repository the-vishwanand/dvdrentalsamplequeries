/*Show customers who rented in the last 30 days.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customers, r.rental_date
FROM
	customer c
JOIN rental r
	USING (customer_id)
WHERE r.rental_date >= (
	SELECT MAX(r.rental_date) - INTERVAL '30 days'
	FROM rental r;