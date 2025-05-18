/* Show total revenue per store. */
SELECT
	SUM(p.amount) as total_revenue, s.address_id as Store
FROM
	payment p
JOIN staff st
ON p.staff_id = st.staff_id
JOIN store s
ON st.store_id = s.store_id
GROUP BY Store;