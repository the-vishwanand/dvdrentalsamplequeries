/*Mark films as 'Expensive' or 'Affordable' based on replacement cost.*/
SELECT
	f.title, f.replacement_cost,
	CASE
		WHEN f.replacement_cost <=15.99 THEN 'Affordable'
		ELSE 'Expensive'
	END AS category
FROM
	film f;