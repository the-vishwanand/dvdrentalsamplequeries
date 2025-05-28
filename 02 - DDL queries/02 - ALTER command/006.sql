/*Rename the column return_date to actual_return_date in the rental table.*/
ALTER TABLE rental
	RENAME COLUMN return_date to actual_return_date;