
--inserting data into courses table
INSERT INTO Courses (CourseID,CourseName) values 
		(1, 'Biochemistry'),
		(2, 'Immunology & Allergy'),
		(3, 'Microbiology'),
		(4, 'Political Science'),
		(5, 'Punjabi');

SELECT *FROM Courses

--inserting data into Students table
INSERT INTO Students(StudentID,FirstName,LastName,Age,CourseID)
VALUES
	(1,'Stanley', 'Hudson',32,2),
	(2,'Angela', 'Martin',27,1),
	(3,'Kelly', 'Kapoor',18,5),
	(4,'Josh', 'Porter',42,4),
	(5,'Andy', 'Bernard',13,5),
	(6,'Jim', 'Halpert',52,NULL),
	(7,'Michael', 'Scott',39,5),
	(8,'Jan', 'Levinson',20,1),
	(9,'Zafar','Iqbal',8,4),
	(10,'Ayesha','Khan',62,NULL);

SELECT *FROM Students