/*Show films longer than the average film length.*/
SELECT
	f.title as movie_name,f.length
FROM
	film f
WHERE f.length > 
	(SELECT
		 AVG(length)
	 FROM
		 film f);