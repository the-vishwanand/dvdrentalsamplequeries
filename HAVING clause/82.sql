/*Find customers who spent more than $100.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name)as customers, SUM(p.amount)
FROM
	customer c
JOIN payment p
	USING (customer_id)
JOIN rental r
	USING(rental_id)
GROUP BY customers
HAVING SUM(p.amount) > 100;