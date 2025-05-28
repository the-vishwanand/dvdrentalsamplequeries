/*Create a table inventory_notes with note_id (primary key), inventory_id (foreign key to inventory), and note_text (text).*/
CREATE TABLE inventory_notes (
	note_id INT PRIMARY KEY,
	inventory_id INT,
	FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
	note_text VARCHAR);