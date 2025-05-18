/*Find customers who have made more than 10 rentals.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customers, 
	COUNT(r.rental_id) as rental_count
FROM
	customer c
JOIN rental r
	ON c.customer_id = r.customer_id
GROUP BY Customers
HAVING COUNT(r.rental_id)>10;