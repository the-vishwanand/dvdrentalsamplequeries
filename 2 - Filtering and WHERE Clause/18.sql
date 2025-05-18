SELECT
    c.first_name,
    c.last_name,
    a.address,
    COUNT(*) AS account_count
FROM
    customer c
JOIN address a
    ON c.address_id = a.address_id
GROUP BY
    c.first_name,
    c.last_name,
    a.address
HAVING
    COUNT(*) > 1;
