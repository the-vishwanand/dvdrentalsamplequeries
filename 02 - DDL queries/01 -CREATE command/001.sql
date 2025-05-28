/*Create a table film_awards with award_id (Primary Key), film_id (Foreign Key to film), award_name, and award_year.*/
CREATE TABLE film_awards (
	award_id INT PRIMARY KEY,
	film_id INT,
	FOREIGN KEY (film_id) REFERENCES film(film_id),
	award_name VARCHAR,
	award_year DATE);