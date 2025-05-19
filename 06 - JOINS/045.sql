/*Find customers along with their store address.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as Customer, a.address
FROM
	customer c
JOIN address a
	ON c.address_id = a.address_id;