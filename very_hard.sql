DROP DATABASE mySQL_Guided_Inquiry;
SET SQL_SAFE_UPDATES = 0;

SHOW DATABASES;
CREATE DATABASE mySQL_Guided_Inquiry;
USE mySQL_Guided_Inquiry;

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



        












 