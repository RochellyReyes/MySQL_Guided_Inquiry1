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
