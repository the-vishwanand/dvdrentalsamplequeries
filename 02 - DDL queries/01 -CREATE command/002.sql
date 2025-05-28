/*Create a table staff_login with staff_id (Primary Key, Foreign Key to staff), username, password, and last_login (datetime).*/
CREATE TABLE staff_login (
	staff_id INT PRIMARY KEY,
	FOREIGN KEY (staff_id) REFERENCES staff(staff_id), 
	username VARCHAR,
	password VARCHAR,
	last_login DATE);