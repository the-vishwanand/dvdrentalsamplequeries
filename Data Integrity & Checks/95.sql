/*Find inventory items listed in a non-existent store.*/
SELECT
	i.inventory_id
FROM
	inventory i
WHERE i.store_id IS NULL;