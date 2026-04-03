USE LFL;


ALTER TABLE lfl.user_profile 
ADD CONSTRAINT fk_auth_user_table
FOREIGN KEY (user_id)
REFERENCES lfl.auth_user(login_id);


CREATE TABLE if not exists lfl.students(
sno int primary key auto_increment,
studentName varchar(50),
age int default 0,
gender varchar(50),
educationId varchar(10),

FOREIGN KEY (educationId) REFERENCES educationDetails(educationId)
);

CREATE TABLE if not exists lfl.educationDetails(
educationId varchar(10) PRIMARY KEY,
highestQualification varchar(50),
yearOfPassout int
);


INSERT INTO lfl.educationDetails values("EDU1", "MscComputers", 2023),("EDU2", "MCA", 2025);
INSERT INTO lfl.students values (1, "Pavan",24,"Male","EDU1"),(2, "Jalini",24,"Female","EDU2");

-- select the record from the students table
select * from lfl.students where sno = 2;


-- select the record from the student EducationDetails table
select * from lfl.educationdetails where educationId = "EDU2";


-- Note: the following code will be explained clearly in 27-03-2026 class but just observe how we will work with multiple tables

SELECT 
s.sno, s.studentName, s.gender , -- from students table
e.highestQualification, e.yearOfPassout -- from educationDeatis table
from lfl.students s 
JOIN lfl.educationdetails e ON s.educationId = e.educationId where s.sno = 1;













