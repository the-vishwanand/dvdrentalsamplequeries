WITH customer_rental_counts AS (
    SELECT
        customer_id,
        COUNT(*) AS rental_count
    FROM rental
    GROUP BY customer_id
)
SELECT
    AVG(rental_count) AS avg_rentals_per_customer
FROM customer_rental_counts;