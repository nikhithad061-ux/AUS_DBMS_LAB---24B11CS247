--  Implement SQL queries on a normalized database schema based on the provided schema\
-- Creating Tables:
CREATE TABLE Students (
StudentID VARCHAR2(10),
StudentName VARCHAR2(30),
Major VARCHAR2(30)
);
CREATE TABLE Courses (
CourseID VARCHAR2(10),
CourseName VARCHAR2(30),
Credits NUMBER
);
CREATE TABLE Enrollments (
StudentID VARCHAR2(10),
CourseID VARCHAR2(10),
EnrollmentDate DATE
);
CREATE TABLE Instructors (
InstructorID VARCHAR2(10),
InstructorName VARCHAR2(30),
Phone NUMBER
);
CREATE TABLE Course_Instructors (
CourseID VARCHAR2(10),
InstructorID VARCHAR2(10)
);

-- Inserting Sample Data:
INSERT INTO Students VALUES ('S01', 'Kiran', 'CSE');
INSERT INTO Students VALUES ('S02', 'Bala', 'ECE');
INSERT INTO Students VALUES ('S03', 'Ravi', 'EEE');
INSERT INTO Courses VALUES ('C01', 'DBMS', 4);
INSERT INTO Courses VALUES ('C02', 'OS', 3);
INSERT INTO Courses VALUES ('C03', 'Networks', 3);
INSERT INTO Enrollments VALUES ('S01', 'C01', '12-SEP-2024');
INSERT INTO Enrollments VALUES ('S02', 'C02', '15-SEP-2024');
INSERT INTO Enrollments VALUES ('S03', 'C03', '20-SEP-2024');
INSERT INTO Instructors VALUES ('I01', 'Suma', 9876543210);
INSERT INTO Instructors VALUES ('I02', 'Raju', 9876501234);
INSERT INTO Course_Instructors VALUES ('C01', 'I01');
INSERT INTO Course_Instructors VALUES ('C02', 'I02');

-- Display all students and their majors
SELECT * FROM Students;

-- Display all courses with credits
SELECT CourseName, Credits FROM Courses;

-- Display students who enrolled in DBMS
SELECT s.StudentName, c.CourseName
FROM Students s, Enrollments e, Courses c
WHERE s.StudentID = e.StudentID AND e.CourseID = c.CourseID AND c.CourseName = 'DBMS';

-- Display instructor names along with the courses they teach
SELECT i.InstructorName, c.CourseName
FROM Instructors i, Courses c, Course_Instructors ci
WHERE i.InstructorID = ci.InstructorID AND ci.CourseID = c.CourseID;

-- Count number of students enrolled in each course
SELECT c.CourseName, COUNT(e.StudentID) AS Total_Students
FROM Courses c, Enrollments e
WHERE c.CourseID = e.CourseID
GROUP BY c.CourseName;
