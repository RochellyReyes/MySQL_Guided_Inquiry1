DROP DATABASE mySQL_Guided_Inquiry;
SET SQL_SAFE_UPDATES = 0;

SHOW DATABASES;
CREATE DATABASE mySQL_Guided_Inquiry;
USE mySQL_Guided_Inquiry;

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
