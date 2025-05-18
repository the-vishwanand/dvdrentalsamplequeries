/*Display customers who paid more than average payment amount.*/
SELECT
	distinct(CONCAT(c.first_name,' ', c.last_name)) as customers
FROM 
	customer c
JOIN payment p
	USING (customer_id)
WHERE p.amount>(
	SELECT
		AVG(p.amount)
	FROM 
		payment p);
