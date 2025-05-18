/*Show full names of customers in uppercase.*/
SELECT
	UPPER(CONCAT(c.first_name,' ',c.last_name)) as customers
FROM 
	customer c;