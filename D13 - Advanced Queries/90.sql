/*Identify cities with the highest customer count.*/
SELECT
	ci.city,COUNT(c.customer_id)as number_of_customers
FROM
	city ci
JOIN address a
	USING (city_id)
JOIN customer c
	USING(address_id)
GROUP BY c.city
ORDER BY number_of_customers DESC;