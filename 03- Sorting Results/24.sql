/*Show films sorted by length in descending order.*/
SELECT
	f.title, f.length as duration
FROM
	film f
ORDER BY f.length DESC;
	