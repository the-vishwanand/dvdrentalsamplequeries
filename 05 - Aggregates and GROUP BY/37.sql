/* Show the average film length by rating. */
SELECT
	AVG(f.length) as avg_length, f.rating
FROM
	film f
GROUP BY f.rating;