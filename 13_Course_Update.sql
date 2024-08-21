-- DATATYPES in SQL -> DECIMAL
-- IMPLICIT TYPECASTING
INSERT INTO Courses(CourseName,CourseDuration,CourseFee) Values("Foundations of Machine Learning",3.5,4999);
SELECT * FROM courses;

CREATE TABLE IF NOT EXISTS Course_Update(
	CourseID INT AUTO_INCREMENT,
	CourseName varchar(50) NOT NULL,
	CourseDurationInMonths DECIMAL(3,1) NOT NULL,
    CourseFee INT NOT NULL,
	ChangedAt TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    PRIMARY KEY(CourseID)
);

DROP TABLE Course_Update;

INSERT INTO Course_Update(CourseName,CourseDurationInMonths,CourseFee) Values("The Complete Excel Mastery Course",2.5,1499);
INSERT INTO Course_Update(CourseName,CourseDurationInMonths,CourseFee) Values("DSA For Interview Preparation",2,4999);
INSERT INTO Course_Update(CourseName,CourseDurationInMonths,CourseFee) Values("SQL Bootcamp",1,2999);
INSERT INTO Course_Update(CourseName,CourseDurationInMonths,CourseFee) Values("Foundations of Machine Learning",3.5,4999);

SELECT * FROM Course_Update;

INSERT INTO Course_Update(CourseName,CourseDurationInMonths,CourseFee) Values("Statistics for Data Science",1.5,3999);

SELECT * FROM Course_Update;

-- Update the CourseFee Of SQL Bootcamp to 3999
UPDATE course_update SET CourseFee=3999
WHERE CourseID = 3;

SELECT * FROM Course_Update;