/*Find films where the length is less than 90 minutes*/
SELECT 
	f.title
FROM
	film f
WHERE length < 90;