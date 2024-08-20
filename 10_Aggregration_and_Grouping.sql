-- Count of the number of students who joined the course via LinkedIn, YouTube, Community
SELECT SourceOfJoining, COUNT(*) as num_of_students
FROM learners
GROUP BY SourceOfJoining;

-- Grouping via sourceofjoining and the location
SELECT SourceOfJoining, Location, COUNT(*) as num_of_students
FROM learners
GROUP BY SourceOfJoining, Location;

-- Corresponding to each course, how many students have enrolled
SELECT SelectedCourses, COUNT(*) AS num_of_students  
FROM learners
GROUP BY SelectedCourses;

-- Corresponding to individual source of joining, give the maximum years of experience any person hold?
SELECT SourceOfJoining, MAX(YearsOfExperience) as max_years_exp
FROM learners
GROUP BY SourceOfJoining;

-- Corresponding to individual source of joining, give the minimum years of experience any person hold?
SELECT SourceOfJoining, MIN(YearsOfExperience) as min_years_exp
FROM learners
GROUP BY SourceOfJoining;

-- Corresponding to individual source of joining, give the average experience any person hold?
-- It makes sense as per the industry purpose
SELECT SourceOfJoining, AVG(YearsOfExperience) as avg_years_exp
FROM learners
GROUP BY SourceOfJoining;

-- Corresponding to individual source of joining, give the summation experience any person hold?
-- It does not makes sense
SELECT SourceOfJoining, SUM(YearsOfExperience) as sum_years_exp
FROM learners
GROUP BY SourceOfJoining;

-- Filteration is required on aggregation
-- after group by apply having clause
SELECT SourceOfJoining, COUNT(*) AS num_of_students  
FROM learners
GROUP BY SourceOfJoining
HAVING num_of_students > 2;

-- Insert two more enrollments in the learners table
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES ("Sidhish", "Kumar", '9998827776', "sidhish@gmail.com", '2024-01-21', 1, 4, "Amazon", "LinkedIn", '2024-02-29', "Gurugram");
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES ("Kaneesha", "Mishra", '9128887776', "kaneesha@gmail.com", '2024-01-21', 1, 5, "Google", "LinkedIn", '2024-02-29', "Bengaluru");

-- Display the count of those students who joined via LinkedIn
SELECT SourceOfJoining, COUNT(*) AS num_of_students  
FROM learners
GROUP BY SourceOfJoining 
HAVING SourceOfJoining = "YouTube";