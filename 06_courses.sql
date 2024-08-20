-- Create a table by the name of courses having feild named 
-- "CourseID", "CourseName", "Course_duration_months", "CourseFee"
CREATE TABLE IF NOT EXISTS courses (
	CourseID INT AUTO_INCREMENT,
    CourseName varChar(50) NOT NULL,
    CourseDuration INT NOT NULL,
    CourseFee INT NOT NULL,
    PRIMARY KEY(CourseID)
);

DESC courses;

-- insert the course details inside the table named course
-- "The Complete Excel Mastary Course", 3, 1499
-- "DSA For Interview Preparation", 2, 4999
-- "SQL Bootcamp", 1, 2999
INSERT INTO courses(CourseName, CourseDuration, CourseFee) VALUES("The Complete Excel Mastary Course", 3, 1499);
INSERT INTO courses(CourseName, CourseDuration, CourseFee) VALUES("DSA For Interview Preparation", 2, 4999);
INSERT INTO courses(CourseName, CourseDuration, CourseFee) VALUES("SQL Bootcamp", 1, 2999);

SELECT * FROM courses;