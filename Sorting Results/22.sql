/*Show customers sorted by last name, then first name.*/
SELECT 
	c.last_name, c.first_name
FROM
	customer c
ORDER BY c.last_name ASC;