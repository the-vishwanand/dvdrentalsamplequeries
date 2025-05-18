/*Identify duplicate email address.*/
SELECT
	c.email, COUNT(c.email) as no_of_duplicates
FROM
	customer c
GROUP BY c.email
HAVING COUNT(c.email) > 1;
		