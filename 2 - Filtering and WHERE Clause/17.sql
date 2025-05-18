/* Find all customers who have no email address. */
SELECT 
	c.email, c.first_name, c.last_name
FROM
	customer c
WHERE
	c.email is NULL;