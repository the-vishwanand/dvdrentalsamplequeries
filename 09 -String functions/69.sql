/*List emails with the domain 'example.com'*/
SELECT
	c.email
FROM
	customer c
WHERE c.email 
LIKE '%example.com'