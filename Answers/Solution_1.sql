USE record_company;
CREATE TABLE songs (
	id INT AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	LENGTH FLOAT NOT NULL,
	album_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (album_id) REFERENCES albums(id) 
);