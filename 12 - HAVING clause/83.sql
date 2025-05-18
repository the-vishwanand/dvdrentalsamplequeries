/*List cities where more than 10 customers live.*/
SELECT
	SUM(c.customer_id)as counts, ci.city
FROM
	customer c
JOIN address a
	USING(address_id)
JOIN city ci
	USING(city_id)
GROUP BY ci.city
	HAVING SUM(c.customer_id) > 10;