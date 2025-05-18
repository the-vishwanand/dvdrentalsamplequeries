/* List all actors full names. */
SELECT 
	concat(a.first_name, ' ', a.last_name) full_name
FROM
	actor a;/*use concat to display full name*/