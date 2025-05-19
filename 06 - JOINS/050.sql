/*List all rentals made by customers from 'New York'.*/
SELECT
	CONCAT(c.first_name,' ',c.last_name) as Customers, r.rental_id
FROM
	customer c
JOIN address a
	ON c.address_id = a.address_id
JOIN city ci
	ON a.city_id = ci.city_id
JOIN payment p
	ON c.customer_id = p.customer_id
JOIN rental r
	ON p.rental_id = r.rental_id;