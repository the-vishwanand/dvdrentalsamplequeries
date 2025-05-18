/* Find the total amount paid by each customer. */
SELECT
	SUM(p.amount) as total_amount, CONCAT(c.first_name, c.last_name) as customer
FROM
	payment p
JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY customer
ORDER BY total_amount DESC;