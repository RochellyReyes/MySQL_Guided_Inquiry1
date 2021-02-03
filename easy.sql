DROP DATABASE mySQL_Guided_Inquiry;
SET SQL_SAFE_UPDATES = 0;

SHOW DATABASES;
CREATE DATABASE mySQL_Guided_Inquiry;
USE mySQL_Guided_Inquiry;
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
