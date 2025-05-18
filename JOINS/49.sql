/*Show payments with customer and staff details.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name)as Customer, CONCAT(s.first_name,' ', s.last_name) as Staff, p.amount, p.payment_id
FROM 
	customer c
JOIN payment p
	ON c.customer_id = p.customer_id
JOIN rental r
	ON p.rental_id = r.rental_id
JOIN staff s
	ON r.staff_id = s.staff_id;