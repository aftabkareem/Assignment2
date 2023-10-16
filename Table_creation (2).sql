
USE WeekendProject
GO

--Creating Students Table
CREATE TABLE Students(
	StudentID int Primary key NOT NULL,
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	Age int,
	CourseID int
);

--Creating Courses Table
CREATE TABLE Courses(
	CourseID int Primary key,
	CourseName VARCHAR(40)
);

--CourseID in Students table is Foreign Key
ALTER TABLE Students
	ADD Foreign Key(CourseID) 
	REFERENCES Courses(CourseID)
	ON DELETE set NULL;


