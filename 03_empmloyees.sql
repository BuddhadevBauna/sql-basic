-- table creation
CREATE TABLE IF NOT EXISTS employees (
   --  EID INT PRIMARY KEY,
    EID INT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL,
    PRIMARY KEY (EID)
);

-- for delete table
DROP TABLE IF EXISTS employees;

-- again create table
CREATE TABLE IF NOT EXISTS employees (
    EID INT AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL,
    PRIMARY KEY (EID)
);

-- insert record in tables
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Buddhadev", "Bauna", 22, 200000, "Kolkata");
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Akhil", "Ghosh", 26, 100000, "Gurugram");
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Kamalesh", "Jana", 27, 300000, "London");
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Megha", "Meka", 24, 500000, "America");
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Naga", "sai", 26, 200000, "Bengaluru");
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Priya", "Yadav", 27, 600000, "Noida");
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Kamal", "Bera", 23, 100000, "Kolkata");

-- for read record
SELECT * FROM employees;

-- give me the employee detials whose salary is more than 300000
SELECT * FROM employees WHERE Salary > 300000;

-- give me the employee first & last name whose salary is more than 300000 -> filter the data
SELECT FirstName, LastName FROM employees WHERE Salary > 300000;
-- FROM -> WHERE -> SELECT work in this direction execution happend

-- give me the employee records of the employee having age more than 25
SELECT * FROM employees WHERE age > 25;
-- FROM -> WHERE -> SELECT work in this direction execution happend

-- upadate the last name of priya with Bhatt
UPDATE employees SET LastName = "Bhatt" WHERE EID = 6;
-- Identify the target table -> Apply the WHERE clause to filter rows -> Apply the SET clause to update the filtered rows

-- delete the records whee EID = 4
DELETE FROM employees WHERE EID = 4;
-- FROM -> WHERE -> DELETE work in this direction