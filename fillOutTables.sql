USE info_project;

DELETE FROM Student_Home_Address;
DELETE FROM Student_Current_Address;
DELETE FROM Is_contained_in;
DELETE FROM Module_List;
DELETE FROM Student;
DELETE FROM Professor_Home_Address;
DELETE FROM Professor;
DELETE FROM Module;
DELETE FROM Course;
DELETE FROM School;
DELETE FROM College;

INSERT INTO Student VALUES(10000000, 'Colin', 	 'Redmond',    'Micheal',	 21,  3, 'Male');
	INSERT INTO Student_Home_Address 	VALUES('4 College Green, Dublin 4, Dublin, Ireland', 10000000);
	INSERT INTO Student_Current_Address VALUES('18 College Road, Limerick, Ireland', 			 10000000);
INSERT INTO Student VALUES(10000001, 'Karl', 	 'Marx', 	   'Heinrich',   202, 3, 'Male');
	INSERT INTO Student_Home_Address 	VALUES('Triumph Avenue, Moscow, Russia',  10000001);
	INSERT INTO Student_Current_Address VALUES('19 Main Road, Limerick, Ireland', 10000001);
INSERT INTO Student VALUES(10000002, 'Vladimir', 'Ulyanov',    'Ilyich',	 150, 2, 'Male');
	INSERT INTO Student_Home_Address 	VALUES('35 College Road, Limerick, Ireland', 10000002);
	INSERT INTO Student_Current_Address VALUES('35 College Road, Limerick, Ireland', 10000002);
INSERT INTO Student VALUES(10000003, 'Mohandas', 'Gandhi', 	   'Karamchand', 151, 1, 'Male');
	INSERT INTO Student_Home_Address 	VALUES('Taj Mahal, Uttar Pradesh, India', 10000003);
	INSERT INTO Student_Current_Address VALUES('Taj Mahal, Uttar Pradesh, India', 10000003);
INSERT INTO Student VALUES(10000004, 'Jessica',  'Alba', 	   'Marie',		 39,  3, 'Female');
	INSERT INTO Student_Home_Address 	VALUES('207 Venice Lane, California, USA', 10000004);
	INSERT INTO Student_Current_Address VALUES('207 Venice Lane, California, USA', 10000004);
INSERT INTO Student VALUES(10000005, 'Amber', 	 'Levonchuck', NULL,		 37,  4, 'Gender Fluid');
	INSERT INTO Student_Home_Address 	VALUES('RoseGarden, Michigan, USA', 	  10000005);
	INSERT INTO Student_Current_Address VALUES('25 College Road, Limerick, Ireland', 10000005);
    
INSERT INTO College VALUES('Trinity College Dublin', 	25000, 3, 1, 1001);
INSERT INTO College VALUES('University College Dublin', 17500, 2, 6, 1002);
INSERT INTO College VALUES('Dublin City University', 	12000, 1, 4, 1003);
INSERT INTO College VALUES('Cambridge University', 		20000, 1, 3, 1004);
INSERT INTO College VALUES('Harvard University', 		5000,  2, 2, 1005);
INSERT INTO College VALUES('London City University', 	17500, 1, 5, 1006);

INSERT INTO School VALUES( 2500, 2001, 'School of Statistics', 	1, 'Computer Science', 						1001);
INSERT INTO School VALUES( 4000, 2002, 'School of Arts', 		2, 'Drawing, Painting', 					1001);
INSERT INTO School VALUES( 500,  2003, 'School of Business', 	1, 'Business', 							   	1001);
INSERT INTO School VALUES( 7500, 2004, 'School of Education', 	2, 'Primary Teaching, Secondary Teaching', 	1002);
INSERT INTO School VALUES( 3000, 2005, 'School of Medicine', 	1, 'Medicine', 								1002);
INSERT INTO School VALUES( 3600, 2006, 'School of Physics', 	1, 'Physics', 								1003);
INSERT INTO School VALUES( 1000, 2007, 'School of Chemistry', 	1, 'Chemistry', 							1004);
INSERT INTO School VALUES( 4500, 2008, 'School of Literature', 	1, 'Novel Reading', 						1005);
INSERT INTO School VALUES( 1200, 2009, 'School of Linguistics', 1, 'English', 								1005);
INSERT INTO School VALUES( 3000, 2010, 'School of Biology', 	1, 'Biology', 								1006);

INSERT INTO Course VALUES( 'Computer Science', 	 3001, 2500, 1, 'Computer Technology', 						 'Bachelor\'s', 2001);
INSERT INTO Course VALUES( 'Drawing', 			 3002, 3000, 2, 'Line Drawing, Curve Drawing', 				 'Associate', 	2002);
INSERT INTO Course VALUES( 'Painting', 			 3003, 1000, 1, 'Colour Usage', 							 'Associate', 	2002);
INSERT INTO Course VALUES( 'Business', 			 3004, 500,  1, 'Money Making', 							 'Master\'s', 	2003);
INSERT INTO Course VALUES( 'Primary Teaching', 	 3005, 1000, 2, 'Basics Of Teaching, Dealing With Children', 'Associate', 	2004);
INSERT INTO Course VALUES( 'Secondary Teaching', 3006, 6500, 1, 'Dealing With Adolescents', 				 'Doctoral', 	2004);
INSERT INTO Course VALUES( 'Medicine', 			 3007, 3000, 1, 'Healing People 101', 						 'Bachelor\'s', 2005);
INSERT INTO Course VALUES( 'Physics', 			 3008, 3600, 1, 'Planets', 						 			 'Associate', 	2006);
INSERT INTO Course VALUES( 'Chemistry', 		 3009, 1000, 1, 'Chemistry', 						 		 'Master\'s', 	2007);
INSERT INTO Course VALUES( 'Novel Reading', 	 3010, 4500, 1, 'The Alphabet', 							 'Master\'s', 	2008);
INSERT INTO Course VALUES( 'English', 			 3011, 1200, 1, 'Vowels', 									 'Associate', 	2009);
INSERT INTO Course VALUES( 'Biology', 			 3012, 3000, 1, 'Animals', 									 'Bachelor\'s', 2010);

INSERT INTO Module VALUES( 4001, 'Computer Technology', 	 	2500, 5,  0.5, 	3001);
INSERT INTO Module VALUES( 4002, 'Line Drawing', 		 		2500, 5,  0.5, 	3002);
INSERT INTO Module VALUES( 4003, 'Curve Drawing', 		 		500,  10, 1, 	3002);
INSERT INTO Module VALUES( 4004, 'Colour Usage', 		 		1000, 5,  0.5, 	3003);
INSERT INTO Module VALUES( 4005, 'Money Making', 	 			500,  5,  0.5, 	3004);
INSERT INTO Module VALUES( 4006, 'Basics Of Teaching',    		500,  5,  0.5, 	3005);
INSERT INTO Module VALUES( 4007, 'Dealing With Children', 		500,  10, 1, 	3005);
INSERT INTO Module VALUES( 4008, 'Dealing With Adolescents', 	6500,  15, 1, 	3006);
INSERT INTO Module VALUES( 4009, 'Healing People 101', 			3000,  15, 1, 	3007);
INSERT INTO Module VALUES( 4010, 'Planets', 					3600,  5, 0.5, 	3008);
INSERT INTO Module VALUES( 4011, 'Chemistry', 					1000,  5, 0.5, 	3009);
INSERT INTO Module VALUES( 4012, 'The Alphabet', 				4500,  5, 0.5, 	3010);
INSERT INTO Module VALUES( 4013, 'Vowels', 						1200,  5, 0.5, 	3011);
INSERT INTO Module VALUES( 4014, 'Animals', 					3000,  5, 1, 	3012);

INSERT INTO Professor VALUES('Alfred', 'Einsteib',   NULL,	      7, 4, 6, 5001, 'Male',   240000, 'Lord Emperor of Physics', 60, 1001, 4010);
	INSERT INTO Professor_Home_Address VALUES('7 Professor Village, Louth, Ireland',5001); 
INSERT INTO Professor VALUES('Danny',  'Davito', 	 NULL,	 	  3, 1, 2, 5002, 'Male',   840000, 'Ser', 					  35, 1003, 4007);
	INSERT INTO Professor_Home_Address VALUES('12 Professor Village, Louth, Ireland',5002); 
INSERT INTO Professor VALUES('Sarah',  'Marshall', 	 NULL,		  1, 5, 0, 5003, 'Female', 260000, 'Mrs', 					  60, 1002, 4008);
	INSERT INTO Professor_Home_Address VALUES('2 Professor Village, Louth, Ireland',5003); 
INSERT INTO Professor VALUES('Elizabeth', 'Windsor', 'Alexandra', 1, 0, 0, 5004, 'Female', 995000, 'The Second', 			  60, 1005, 4005);
	INSERT INTO Professor_Home_Address VALUES('18 Professor Village, Louth, Ireland',5004); 
INSERT INTO Professor VALUES('Ada', 'Lovelace',		 NULL,		  6, 9, 7, 5005, 'Female', 130000, 'Mother of Computing',  	  60, 1005, 4001);	
	INSERT INTO Professor_Home_Address VALUES('9 Professor Village, Louth, Ireland',5005); 

INSERT INTO Module_List VALUES(6001, 10000000);
	INSERT INTO Is_contained_in VALUES(4001,6001);
	INSERT INTO Is_contained_in VALUES(4005,6001);
	INSERT INTO Is_contained_in VALUES(4008,6001);
INSERT INTO Module_List VALUES(6002, 10000001);
	INSERT INTO Is_contained_in VALUES(4013,6002);
INSERT INTO Module_List VALUES(6003, 10000002);
	INSERT INTO Is_contained_in VALUES(4006,6003);
INSERT INTO Module_List VALUES(6004, 10000003);
	INSERT INTO Is_contained_in VALUES(4007,6004);
INSERT INTO Module_List VALUES(6005, 10000004);
	INSERT INTO Is_contained_in VALUES(4014,6005);




