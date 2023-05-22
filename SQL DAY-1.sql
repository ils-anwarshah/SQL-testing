CREATE DATABASE testing_db;

USE Testing_db;

CREATE TABLE Employee(id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(20), last_name VARCHAR(20), age INT, salary INT );

INSERT INTO Employee VALUES (1,"Anwar", "Shah", 21, 10000);
INSERT INTO Employee(first_name, last_name, age, salary) VALUES ("Yuvraj", "Jaiswal", 21, 10000);
INSERT INTO Employee(first_name, last_name, age, salary) VALUES ("Shivendra", "patel", 23, 20000);
INSERT INTO Employee(first_name, last_name, age, salary) VALUES ("Aleyka", "Gazhdar", 22, 15000);
INSERT INTO Employee(first_name, last_name, age, salary) VALUES ("Juhi", "Sahu", 25, 12000);
INSERT INTO Employee(first_name, last_name, age, salary) VALUES ("Sobha", "Dhande", 22, 40000);
INSERT INTO Employee(first_name, last_name, age, salary) VALUES ("Mota", "Bhai", 31, 30000);

SELECT * FROM EMPLOYEE;


ALTER TABLE Employee ADD Position VARCHAR(20);
ALTER TABLE Employee ADD team_id INT;

UPDATE Employee SET position = "Software Developer" WHERE id  = 1;
UPDATE Employee SET position = "Software Developer" WHERE id =3 ;
UPDATE Employee SET position = "Software Developer" WHERE age = 21;
UPDATE Employee SET position = "Python Developer" WHERE first_name = "Shobha";
UPDATE Employee SET position = " Developer" WHERE first_name ='Juhi';
UPDATE Employee SET position = "Software Developer" WHERE id  = 1 OR id = 6 OR id = 7;
UPDATE Employee SET position = "Software Developer" WHERE id  = 4;

UPDATE Employee SET team_id = 1 WHERE id  = 1;
UPDATE Employee SET team_id = 2 WHERE id  = 2;
UPDATE Employee SET team_id = 3 WHERE id  = 3;
UPDATE Employee SET team_id = 4 WHERE id  = 4;
UPDATE Employee SET team_id = 5 WHERE id  = 5;
UPDATE Employee SET team_id = 6 WHERE id  = 6;
UPDATE Employee SET team_id = 7 WHERE id  = 7;

CREATE TABLE team(team_id INT, team_name VARCHAR(20));

ALTER TABLE team MODIFY COLUMN team_id INT PRIMARY KEY AUTO_INCREMENT;

INSERT INTO team(team_name) VALUES("DEV TEAM");

DESCRIBE team;

SELECT * FROM team;

INSERT INTO team(team_name) VALUES("TA TEAM");

ALTER TABLE team ADD CONSTRAINT FOREIGN KEY(team_id) REFERENCES Employee(id) ;

DESCRIBE team;

SELECT team_name FROM team;

SELECT * FROM Employee;

DESCRIBE EMPLOYEE;


