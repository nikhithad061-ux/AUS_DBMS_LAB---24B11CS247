 -- Create a Primary and Secondary Index on a Column 
CREATE TABLE Students (
StudentID VARCHAR2(10) PRIMARY KEY,
StudentName VARCHAR2(30),
Major VARCHAR2(20)
);
-- Creating Secondary Index on StudentName
CREATE INDEX idx_studentname
ON Students (StudentName);
