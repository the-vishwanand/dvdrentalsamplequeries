/*Show the average number of rentals per customer.*/
WITH customer_rental_counts as(
	SELECT
		c.customer_id, 
		COUNT(r.rental_id) as rental_count
	FROM customer c
	JOIN rental r
		USING (customer_id)
	GROUP BY customer_id)
SELECT 
	CONCAT(c.first_name,' ',c.last_name) as customers, 
	AVG(rental_count) as average_rentals
FROM
	customer_rental_counts, customer c
GROUP BY customers;
