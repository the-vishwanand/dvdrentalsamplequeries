/*Display payment amounts as 'Low', 'Medium', or 'High'.*/
SELECT
	p.amount,
	CASE
		WHEN p.amount < 3 THEN 'Low'
		WHEN p.amount BETWEEN 3 AND 5 THEN 'Medium'
		ELSE 'High'
	END AS category
FROM
	payment p;