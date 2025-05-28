/*Modify the data type of length in the film table to SMALLINT*/
ALTER TABLE film
	ALTER COLUMN length SET DATA TYPE SMALLINT;