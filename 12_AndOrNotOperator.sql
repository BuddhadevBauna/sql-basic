-- Display the course which doesn't include "Excel"
SELECT * FROM courses
WHERE CourseName NOT LIKE "%Excel%";

-- Display the records of those students who have less than 4 years of experience and source of joining is youtube and location is Chennai
-- Mutiple constraints and all of them should be satisfied, then go for AND Operator in SQL
SELECT * FROM learners
WHERE YearsOfExperience < 4 AND SourceOfJoining = "YouTube" AND Location = "Chennai";

-- Display the records of those students who have years of experience between 1 to 4 years
SELECT * FROM learners
WHERE YearsOfExperience BETWEEN 1 AND 4;

--  Display the records of those students who have less than 4 years of experience or source of joining is youtube or location is Chennai
-- Mutiple constraints and any one of them should be satisfied, then go for OR Operator in SQL
SELECT * FROM learners
WHERE YearsOfExperience < 4 OR SourceOfJoining = "YouTube" OR Location = "Chennai";