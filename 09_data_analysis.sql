-- Data analysis [employee, course, learner]
-- for get max or min salary
SELECT MAX(Salary) as max_salary FROM employees;
SELECT MIN(Salary) as min_salary FROM employees;

-- 1. give me the record of employees getting heigest salary
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1;
-- FROM -> SELECT -> ORDER BY -> LIMIT  in this way flow execution happend
-- another way
SELECT * FROM employees
WHERE Salary = (
    SELECT MAX(Salary) FROM employees
);

-- 2. Give me the record of the employees getting heighest salary and age is bigger than 25
SELECT * FROM employees
WHERE age > 25
ORDER BY salary DESC
LIMIT 1;
-- FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT in this way flow execution happend

-- 3. disply the number of enrollments of learners
SELECT COUNT(*) as num_of_enrollments
FROM learners;

-- 4. Display the number of enrollments for the courseid = 3[SQL Bootcamp]
SELECT COUNT(*) as num_of_learners_SQL
FROM learners
WHERE SelectedCourses = 3;

-- 5. Count the number of learners enrolled in the month of January 21
SELECT COUNT(*) as num_of_learners_jan
FROM learners
WHERE LearnerEnrollmentDate LIKE '%-01-21 %';

-- 6. Update the Jeevan data with years of experience as 1 and learner company as "Amazon"
UPDATE learners
SET YearsOfExperience = 2, LearnerCompany = "Amazon"
WHERE LearnerID = 3;

-- 7. Count the number of companies where learners currently doing their job
/*Count -> count the non null entries
For unique count we use DISTINCT*/
SELECT COUNT(DISTINCT LearnerCompany) as distinct_companies
FROM learners;