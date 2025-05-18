/*Show customers with multiple accounts(same name & address).*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as customer_ name, 
	a.address, 
	COUNT(c.customer_id)
FROM
	customer c
JOIN address a
	USING(address_id)
GROUP BY customers, a.address
	HAVING COUNT(*)>1;