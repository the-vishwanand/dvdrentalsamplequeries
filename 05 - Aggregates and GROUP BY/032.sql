/* count how many customers are in each city. */
SELECT	
	COUNT(c.customer_id) as no_of_customers, ci.city
FROM
	customer c
JOIN address a
ON c.address_id = a.address_id
JOIN city ci
ON a.city_id = ci.city_id
GROUP BY city;
