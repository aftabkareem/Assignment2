
---------------------Stored Procedure for adding-------------------------------------

--Adding in Students Table
CREATE PROCEDURE StudentAdd
    @StudentID INT,
	@FirstName VARCHAR(30),
	@LastName VARCHAR(30),
    @Age INT,
    @CourseID INT
AS
BEGIN
    INSERT INTO Students(StudentID, FirstName, LastName, Age, CourseID)
    VALUES (@StudentID, @FirstName, @LastName,@Age,@CourseID);
END;
GO

--Adding in Courses Table
CREATE PROCEDURE CourseAdd
    @CourseID INT,
	@CourseName VARCHAR(50)
AS
BEGIN
    INSERT INTO Courses(CourseID,CourseName)
    VALUES (@CourseID,@CourseName);
END;
GO



---------------------------------Stored Procedure For Updating------------------

--Updating a Student Age
CREATE PROCEDURE UpdateStudentAge
    @StudentID INT,
    @NewAge INT
AS
BEGIN
    UPDATE Students
    SET Age = @NewAge
    WHERE StudentID = @StudentID;
END;
GO

--Updating a Course Name
CREATE PROCEDURE UpdateCourseName
    @CourseID INT,
    @NewCourseName VARCHAR(50)
AS
BEGIN
    UPDATE Courses
    SET CourseName = @NewCourseName
    WHERE CourseID = @CourseID;
END;
GO


-----------------------------Stored Procedure for Deleting--------------------

--Deleting one entry from students
CREATE PROCEDURE DeleteStudent
	@StudentID int
AS
BEGIN
	DELETE 
	FROM Students
	WHERE StudentID=@StudentID;
END;
GO

--Deleting a course
CREATE PROCEDURE DeleteCourse
	@CourseID int
AS
BEGIN
	DELETE 
	FROM Courses
	WHERE CourseID=@CourseID;
END;
GO


------------------------------Stored Procedure for retrieving data from both tables--------

--Retrieving All Data from students Table
CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT * FROM Students;
END;
GO

--Retrieving All Data from Courses Table
CREATE PROCEDURE GetAllCourses
AS
BEGIN
    SELECT * FROM Courses;
END;
GO



