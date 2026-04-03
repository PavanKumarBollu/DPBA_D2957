-- Agenda is To completely deal with the table sturcuture modification 
-- rename table rename the column or adding a new column adding multiple columns
-- after adding multiple coulmns how to add the data to that column 


-- to modify anything related to table stucture apart from table data then we will use the alter table commnad in sql

-- i want to modify the 2 records then which one i should use update or alter .? ANS : update
-- i want to modify the table add a coulmn then which one i should use update or alter .? ANS : alter table

-- add a single column to students table
ALTER TABLE lfl.students 
ADD COLUMN phooone_no VARCHAR(20);


-- MODIFY THE EXISTING COLUMN ONLY INSTEAD OF ADDING A NEW COLUMN 

ALTER TABLE lfl.students 
CHANGE studentName stdName varchar(50);

















