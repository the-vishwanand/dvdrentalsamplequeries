/*Replace the word 'Action' with 'Adventure' in film descriptions.*/
SELECT
	f.description, REPLACE(f.description,'Action','Adventure') as update_description
FROM 
	film f