/* Count the number of films in the inventory. */
SELECT
	COUNT(i.film_id)as total_no_of_films
FROM
	inventory i;
