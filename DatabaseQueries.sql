USE info_project;
SELECT * FROM professor_public;    
SELECT * FROM college_population;
SELECT * FROM student_public;
SELECT * FROM Student;
SELECT * FROM Is_contained_in;
SELECT * FROM Module_List;

SET @ExampleStudent := 10000000;

SELECT s.*,c.Module_List_Id,m.Module_Id,m.Module_Name
	FROM Module_List l
    LEFT JOIN Is_contained_in c ON l.Module_List_Id = c.Module_List_Id
    LEFT JOIN Module m ON c.Module_Id = m.Module_Id
    RIGHT JOIN student_public s ON s.Student_Id = l.Student_Id
    WHERE l.Student_Id = @ExampleStudent;