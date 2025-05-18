/*List staff members sorted by store ID.*/
SELECT 
	s.first_name, s.last_name, s.store_id
FROM
	staff s
ORDER BY s.store_id;