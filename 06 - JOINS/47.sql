/*List each rental with customer and staff who handled it.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name)as Customer, CONCAT(s.first_name,' ',s.last_name) as Staff, r.rental_id
FROM
	customer c
JOIN rental r
	ON c.customer_id = r.customer_id
JOIN staff s
	ON r.staff_id = s.staff_id;