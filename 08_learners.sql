CREATE TABLE IF NOT EXISTS learners(
    LearnerID INT AUTO_INCREMENT,
    LearnerFirstName varChar(50) NOT NULL,
    LearnerLastName varChar(50) NOT NULL,
    LearnerPhoneNo varChar(10) NOT NULL,
    LearnerEmailID varChar(50),
    LearnerEnrollmentDate TIMESTAMP NOT NULL,
    SelectedCourses INT NOT NULL,
    YearsOfExperience INT NOT NULL,
    LearnerCompany varChar(50),
    SourceOfJoining varChar(50) NOT NULL,
    BatchStartDate TIMESTAMP NOT NULL,
    Location varChar(50) NOT NULL,
    PRIMARY KEY (LearnerID),
    UNIQUE KEY (LearnerEmailID),
    FOREIGN KEY (SelectedCourses) REFERENCES courses (CourseID)
);

DESC learners;

-- Insert learners details in learner table
-- Batch start date '1' - '2024-02-29'
-- Batch start date '2' - '2024-01-16'
-- Batch start date '3' - '2024-03-25'
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES ("Akash", "Mishra", '9998887776', "akash@gmail.com", '2024-01-21', 1, 4, "Amazon", "LinkedIn", '2024-02-29', "Bengaluru");
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("Rishikesh","Joshi","9950192388", "carjkop@gmail.com", '2024-03-19', 3, 2, "HCL", "Youtube", '2024-03-25', "Chennai");
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("Jeevan","Hegde", "9657856732","jeevanhegdek@yahoo.co.in", '2024-01-15', 2, 0, "", "Linkedin", '2024-01-16', "Noida");
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("Akhil","George","7689558930", "akhil.george.8743@gmail.com", '2024-03-13', 3, 4, "Accenture", "Community", '2024-03-25', "Bengaluru");
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location)VALUES("Sidhish","Kumar","6475765443", "sidhishkumar@gmail.com",'2024-01-10', 1, 4, "Meta", "Youtube", '2024-03-29', "Bengaluru");
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("NagaSai","Sreedhar","9182937061", "saisreedhar2001@gmail.com", '2024-03-17', 3, 4, "TCS", "Community", '2024-03-25', "Mumbai");

SELECT * FROM learners;