/*List customers who never rented a film.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as Customers
FROM
	customer c
JOIN rental r
	ON c.customer_id = r.customer_id
WHERE 
	c.customer_id NOT IN(
		SELECT c.customer_id
		FROM rental r);