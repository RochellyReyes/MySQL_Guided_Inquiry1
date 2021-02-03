DROP DATABASE mySQL_Guided_Inquiry;
SET SQL_SAFE_UPDATES = 0;

SHOW DATABASES;
CREATE DATABASE mySQL_Guided_Inquiry;
USE mySQL_Guided_Inquiry;
-- VERY EASY CHALLENGE 
CREATE TABLE cars(
make VARCHAR(30), 
model VARCHAR(30),
year INT
);

INSERT INTO cars (make, model, year)
VALUES ("Tesla", "Model S", 2020),
		("Lexus", "GS350", 2015),
		("Audi", "RS5", 2014);

INSERT INTO cars (make, model, year)
VALUES ("Nobel", "M600", 2021),
		("Tesla", "Roadster", 2021);
        
SELECT * FROM cars;

-- EASY CHALLENGE  
CREATE TABLE books(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
publish_date INT,
author_name VARCHAR(100)
);

INSERT INTO books(title, publish_date, author_name)
VALUES ("The Alchemist", 1988, "Paulo Coelho" ),
("The Last Lecture", 2008, "Randy Pausch" ),
("Mindset", 2006, "Carlo Dweck"),
("The Other Kind of Smart", 2009,"Harvey Deutschendorf"),
("The Light Between Us", 2015, "Laura Jackson" );

-- SELECT * from books;

INSERT INTO books(title, publish_date, author_name)
VALUES ("The Modern Herbal Dispensatory", 2016, "Thomas Easley & Steven Honrne"),
("Midnight Sun", 2020, "Stephenie Meyer");

SELECT * from books;

-- DELETE FROM books
-- WHERE publish_date=1988;

-- SELECT * from books;

SELECT COUNT(title)
FROM books;

-- MEDIUM CHALLENGE 
CREATE TABLE movies(
title VARCHAR(255), 
release_date DATE,
rating INT
);

INSERT INTO movies(title, release_date, rating)
VALUES 
("Up", "2009-05-28",  10),
("Gone Girl", "2014-10-03", 8),
("Australia", "2008-11-26", 7),
("Avatar", "2009-12-18", 8),
("Soul", "2020-12-25", 9),
("Lilo and Stitch", "2002-06-16", 8),
("Goal", "2006-05-12", 7),
("Osmosis Jones", "2001-08-07", 6),
("Easy A", "2010-09-17", 7),
("White Chicks", "2004-06-23", 6);

SELECT * FROM movies
WHERE title LIKE '%s%'
ORDER BY release_date;

-- HARD CHALLENGE  
CREATE TABLE movies_hard(
title VARCHAR(255), 
release_date DATE,
rating INT
);

INSERT INTO movies_hard(title, release_date, rating)
VALUES 
("Up", "2009-05-28",  10),
("Gone Girl", "2014-10-03", 8),
("Australia", "2008-11-26", 7),
("Avatar", "2009-12-18", 8),
("Soul", "2020-12-25", 9),
("Lilo and Stitch", "2002-06-16", 8),
("Goal", "2006-05-12", 7),
("Osmosis Jones", "2001-08-07", 6),
("Easy A", "2010-09-17", 7),
("White Chicks", "2004-06-23", 6);

SELECT * FROM movies_hard;

ALTER TABLE movies_hard
ADD first_name_director VARCHAR(100),
ADD last_name_director VARCHAR(100);
SELECT * FROM movies_hard;

UPDATE movies_hard
	SET 
		first_name_director = "Pete",
        last_name_director = "Docter"
	WHERE title = "Up";
    
UPDATE movies_hard
	SET 
		first_name_director = "David",
        last_name_director = "Fincher"
	WHERE title = "Gone Girl";
    
UPDATE movies_hard
	SET 
		first_name_director = "Baz",
        last_name_director = "Lauhrmann"
	WHERE title = "Australia";
    
UPDATE movies_hard
	SET 
		first_name_director = "James",
        last_name_director = "Cameron"
	WHERE title = "Avatar";
    
UPDATE movies_hard
	SET 
		first_name_director = "Pete",
        last_name_director = "Docter"
	WHERE title = "Soul";
    
UPDATE movies_hard
	SET 
		first_name_director = "Chris",
        last_name_director = "Sanders"
	WHERE title = "Lilo and Stitch";
    
UPDATE movies_hard
	SET 
		first_name_director = "Danny",
        last_name_director = "Cannon"
	WHERE title = "Goal";
    
UPDATE movies_hard 
SET 
    first_name_director = 'Bobby',
    last_name_director = 'Farrelly'
WHERE
    title = 'Osmosis Jones';
    
UPDATE movies_hard
	SET 
		first_name_director = "Will",
        last_name_director = "Gluck"
	WHERE title = "Easy A";
    
UPDATE movies_hard
	SET 
		first_name_director = "Keenen",
        last_name_director = "Wayans"
	WHERE title = "White Chicks";

SELECT * FROM movies_hard;
    

SELECT title, release_date, rating, CONCAT(first_name_director, " ", last_name_director) AS director
FROM movies_hard ORDER BY SUBSTRING_INDEX(director, ' ', -1)
LIMIT 3;

DELETE FROM movies_hard WHERE last_name_director BETWEEN 'R' AND 'Z';

-- VERY HARD CHALLENGE 
CREATE TABLE cars_veryhard(
make VARCHAR(255), 
model VARCHAR(255),
year INT
);

INSERT INTO cars_veryhard (make, model, year)
VALUES ("Tesla", "Model S", 2020),
		("Lexus", "GS350", 2015),
		("Audi", "RS5", 2014),
        ("Nobel", "M600", 2021),
		("Tesla", "Roadster", 2021);

INSERT INTO cars_veryhard (make, model, year)
VALUES ("Audi", "A4", 2021),
		("Lexus", "IS", 2021),
        ("Suburu", "Legacy", 2021);

SELECT * FROM cars_veryhard;

ALTER TABLE cars_veryhard
ADD COLUMN price INT;

ALTER TABLE cars_veryhard
ADD COLUMN color VARCHAR(255);

SELECT CONCAT(make, " ", model) AS make_model, year, price, color
FROM cars_veryhard;

SELECT COUNT(model), make
FROM cars_veryhard
GROUP BY make



        












 