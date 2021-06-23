USE info_project;

DROP VIEW IF EXISTS professor_public;
DROP VIEW IF EXISTS student_public;
DROP VIEW IF EXISTS college_population;

CREATE VIEW professor_public AS
SELECT First_name,Middle_Name,Last_Name,Years_at_Institution,Years_in_Research,Years_of_Work_in_Field,Official_Title,Module_Id,Professor_Id
FROM Professor;

CREATE VIEW student_public AS
SELECT First_name,Middle_Name,Last_Name,Current_year,Student_Id
FROM Student;

CREATE VIEW college_population AS
	SELECT 'Professor' AS Position,First_name,Middle_Name,Last_Name,CONCAT('PROF-',Professor_Id) AS Id
	From professor_public
	UNION
	SELECT 'Student' AS Position,First_name,Middle_Name,Last_Name,CONCAT('STUD-',Student_Id) AS Id
	From Student_public;

DROP TRIGGER IF EXISTS NullToNoneProf;  
DELIMITER |  
CREATE TRIGGER NullToNoneProf
	BEFORE INSERT ON Professor 
	FOR EACH ROW
	IF ISNULL(NEW.Middle_Name) THEN
		SET NEW.Middle_Name := 'None Listed';
	END IF;
|    
DELIMITER ;

DROP TRIGGER IF EXISTS NullToNoneStud;  
DELIMITER |  
CREATE TRIGGER NullToNoneStud
	BEFORE INSERT ON Student 
	FOR EACH ROW
	IF ISNULL(NEW.Middle_Name) THEN
		SET NEW.Middle_Name := 'None Listed';
	END IF;
|    
DELIMITER ;