DROP DATABASE IF EXISTS info_project;
CREATE DATABASE info_project;
USE info_project;

CREATE TABLE Student
(
  Student_Id INT NOT NULL,
  First_name VARCHAR(20) NOT NULL,
  Last_Name VARCHAR(20) NOT NULL,
  Middle_Name VARCHAR(20),
  Age INT NOT NULL,
  Current_year INT NOT NULL,
  Sex VARCHAR(30),
  PRIMARY KEY (Student_Id),
  CONSTRAINT lower_bound_student_id CHECK (Student_Id > 9999999),
  CONSTRAINT upper_bound_student_id CHECK (Student_Id < 100000000),
  CONSTRAINT lower_bound_current_year CHECK (Current_year > 0)
);

CREATE TABLE College
(
  CollegeName VARCHAR(30) NOT NULL,
  Number_of_Students INT NOT NULL,
  Number_of_Schools INT NOT NULL,
  College_Rank INT NOT NULL,
  College_Id INT NOT NULL,
  PRIMARY KEY (College_Id),
  CONSTRAINT lower_bound_college_rank CHECK (College_Rank > 0),
  CONSTRAINT lower_bound_number_of_students CHECK (Number_of_Students > 0),
  CONSTRAINT lower_bound_number_of_schools CHECK (Number_of_Schools > 0)
);

CREATE TABLE Module_List
(
  Module_List_Id INT NOT NULL,
  Student_Id INT NOT NULL,
  PRIMARY KEY (Module_List_Id, Student_Id),
  FOREIGN KEY (Student_Id) REFERENCES Student(Student_Id)
);

CREATE TABLE Student_Home_Address
(
  Home_Address VARCHAR(60) NOT NULL,
  Student_Id INT NOT NULL,
  PRIMARY KEY (Home_Address, Student_Id),
  FOREIGN KEY (Student_Id) REFERENCES Student(Student_Id)
);

CREATE TABLE Student_Current_Address
(
  Current_Address VARCHAR(60) NOT NULL,
  Student_Id INT NOT NULL,
  PRIMARY KEY (Current_Address, Student_Id),
  FOREIGN KEY (Student_Id) REFERENCES Student(Student_Id)
);

CREATE TABLE School
(
  Number_of_Students INT NOT NULL,
  School_Id INT NOT NULL,
  School_name VARCHAR(30) NOT NULL,
  Number_of_Courses INT NOT NULL,
  List_of_Courses VARCHAR(1200) NOT NULL,
  College_Id INT NOT NULL,
  PRIMARY KEY (School_Id),
  FOREIGN KEY (College_Id) REFERENCES College(College_Id),
  UNIQUE (School_name)
);

CREATE TABLE Course
(
  Course_name VARCHAR(60) NOT NULL,
  Course_Id INT NOT NULL,
  Number_of_Students INT NOT NULL,
  Number_of_Modules INT NOT NULL,
  List_of_Modules VARCHAR(800) NOT NULL,
  Course_Degree VARCHAR(40) NOT NULL,
  School_Id INT NOT NULL,
  PRIMARY KEY (Course_Id),
  FOREIGN KEY (School_Id) REFERENCES School(School_Id),
  UNIQUE (Course_name),
  CHECK(Course_Degree IN  ('Associate', 'Bachelor\'s', 'Master\'s', 'Doctoral'))
);

CREATE TABLE Module
(
  Module_Id INT NOT NULL,
  Module_Name VARCHAR(40) NOT NULL,
  Number_of_Students INT NOT NULL,
  Credits_available INT NOT NULL,
  Module_Length INT NOT NULL,
  Course_Id INT NOT NULL,
  PRIMARY KEY (Module_Id),
  FOREIGN KEY (Course_Id) REFERENCES Course(Course_Id),
  UNIQUE (Module_Name)
);

CREATE TABLE Professor
(
  First_name VARCHAR(20) NOT NULL,
  Last_Name VARCHAR(20) NOT NULL,
  Middle_Name VARCHAR(20),
  Years_at_Institution INT NOT NULL,
  Years_in_Research INT,
  Years_of_Work_in_Field INT,
  Professor_Id INT NOT NULL,
  Sex VARCHAR(30),
  Salary INT NOT NULL,
  Official_Title CHAR(30),
  Age INT NOT NULL,
  College_Id INT NOT NULL,
  Module_Id INT NOT NULL,
  PRIMARY KEY (Professor_Id),
  FOREIGN KEY (College_Id) REFERENCES College(College_Id),
  FOREIGN KEY (Module_Id) REFERENCES Module(Module_Id),
  CONSTRAINT lower_bound_years_at_institution CHECK (Years_at_Institution > 0),
  CONSTRAINT minimum_salary CHECK (Salary > 100000)
);

CREATE TABLE Is_contained_in
(
  Module_Id INT NOT NULL,
  Module_List_Id INT NOT NULL,
  PRIMARY KEY (Module_Id, Module_List_Id),
  FOREIGN KEY (Module_Id) REFERENCES Module(Module_Id),
  FOREIGN KEY (Module_List_Id) REFERENCES Module_List(Module_List_Id)
);

CREATE TABLE Professor_Home_Address
(
  Home_Address VARCHAR(60) NOT NULL,
  Professor_Id INT NOT NULL,
  PRIMARY KEY (Home_Address, Professor_Id),
  FOREIGN KEY (Professor_Id) REFERENCES Professor(Professor_Id)
);
