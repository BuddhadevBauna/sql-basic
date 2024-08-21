SELECT * FROM employees;

-- For each location, what is the count of each employee and average salary of the employee in those location
SELECT Location, COUNT(Location) AS Total, AVG(Salary) AS AvgSalary
FROM employees
GROUP BY Location;

-- For each location, what is the count of each employee and average salary of the employee in those location
-- But, also display firstname and lastname corresponding to each record 
SELECT Location, FirstName, LastName, COUNT(Location) AS Total, AVG(Salary) AS AvgSalary
FROM employees
GROUP BY Location, FirstName, LastName;
-- This is incorrect
-- We can solve it by inner join
SELECT FirstName, LastName, employees.Location, Total, AvgSalary
FROM employees
JOIN
(SELECT Location, COUNT(Location) AS Total, AVG(Salary) AS AvgSalary
FROM employees
GROUP BY Location) AS Temp
ON employees.Location = Temp.Location;
-- We can also solve it by PARTION BY -> non aggregation column also display that not possible by group by
-- OVER, PARTION BY -clause
SELECT FirstName, LastName, Location,
COUNT(Location) OVER (PARTITION BY Location) AS Total,
AVG(Salary) OVER (PARTITION BY Location) AS AvgSalary
FROM employees;

-- ROW_NUMBER() VS RANK() VS DENSE_RANK()
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Sudip", "Yadav", 27, 200000, "Noida");
INSERT INTO employees(FirstName, LastName, Age, Salary, Location) VALUES("Sandip", "Bera", 23, 20000, "Kolkata");

SELECT FirstName, LastName, Salary
FROM employees
ORDER BY Salary DESC

SELECT FirstName, LastName, Salary,
ROW_NUMBER() OVER (ORDER BY Salary DESC) AS PriorityEmp
FROM employees;

SELECT FirstName, LastName, Salary,
RANK() OVER (ORDER BY Salary DESC) AS PriorityEmp
FROM employees;

SELECT FirstName, LastName, Salary,
DENSE_RANK() OVER (ORDER BY Salary DESC) AS PriorityEmp
FROM employees;

-- Display the employees having third heighest salary
SELECT * FROM
(SELECT FirstName, LastName, Salary,
DENSE_RANK() OVER (ORDER BY Salary DESC) AS PriorityEmp
FROM employees) AS TEmp
WHERE PriorityEmp = 3;


-- Spacify the details of heighest salary people in each location
-- SELECT FirstName, LastName, Salary, Location,
-- DENSE_RANK() OVER (PARTITION BY Location ORDER BY Salary DESC) AS PriorityEmp
-- FROM employees
SELECT * FROM
(SELECT FirstName, LastName, Salary, Location,
DENSE_RANK() OVER (PARTITION BY Location ORDER BY Salary DESC) AS PriorityEmp
FROM employees) AS Temp
WHERE PriorityEmp = 1