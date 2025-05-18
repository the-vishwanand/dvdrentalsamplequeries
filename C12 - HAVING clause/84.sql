/*Display staff memebrs who handled more than 100 rentals.*/
SELECT
	CONCAT(s.first_name,' ', s.last_name) as staff_members, COUNT(r.rental_id)
FROM
	staff s
JOIN rental r
	USING (staff_id)
GROUP BY staff_members
	HAVING COUNT(r.rental_id) >= 100;