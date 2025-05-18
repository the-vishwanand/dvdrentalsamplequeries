/* Display the total payments received by each staff member. */
SELECT
	SUM(p.amount) as total_payments, CONCAT(s.first_name, s.last_name) as staff_member
FROM
	payment p
JOIN staff s
ON p.staff_id = s.staff_id
GROUP BY staff_member;