/* Count the number of films in each category. */
SELECT
	COUNT(f.film_id)as no_of_films, c.name
FROM
	film f
JOIN film_category fc
ON f.film_id = fc.film_id
JOIN category c
ON fc.category_id = c.category_id
GROUP BY c.name;