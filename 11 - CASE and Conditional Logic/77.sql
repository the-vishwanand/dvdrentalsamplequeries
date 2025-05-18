/*Show film length categorized as ‘Short’, ‘Medium’, or ‘Long’.*/
SELECT
	f.title,f.length,
	CASE
		WHEN f.length < 60 THEN 'Short'
		WHEN f.length BETWEEN 60 AND 150 THEN 'Medium'
		ELSE 'Long'
	END AS category
from film f;