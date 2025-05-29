/*Rename the column note_text in inventory_notes to note_details.*/
ALTER TABLE inventory_notes
	RENAME COLUMN note_text TO note_details;