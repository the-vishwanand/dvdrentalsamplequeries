/*Display actor names with initials only.*/
SELECT
	CONCAT(LEFT(c.first_name, 1),' . ',LEFT(c.last_name,1)) as initials
FROM
	customer c;