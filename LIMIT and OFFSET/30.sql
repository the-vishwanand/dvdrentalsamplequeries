/* Show 10 customers, skipping the first 20.*/
SELECT
	c.first_name, c.last_name
FROM
	customer c
LIMIT 10 OFFSET 20;