/*List top 3 customers by total payment.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customers, SUM(p.amount)
FROM
	customer c
JOIN payment p
	USING (customer_id)
GROUP BY customers
ORDER BY SUM(p.amount) DESC
LIMIT 3;