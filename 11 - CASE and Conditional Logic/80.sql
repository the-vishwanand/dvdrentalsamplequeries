/*Categorize stores by total revenue.*/
SELECT
	s.store_id, SUM(p.amount), 
	CASE
		WHEN SUM(p.amount) < 50000 THEN 'Low'
		WHEN SUM(p.amount) BETWEEN 50000 AND 100000 THEN 'Medium'
		ELSE 'High'
	END AS category
FROM 
	store s
JOIN staff st
	USING (store_id)
JOIN payment p
	USING(staff_id)
GROUP BY s.store_id;