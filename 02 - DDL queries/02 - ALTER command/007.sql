/*Add a column email_verified (BOOLEAN) to customer with default FALSE.*/
ALTER TABLE customer
	ADD column email_verified BOOLEAN DEFAULT FALSE;