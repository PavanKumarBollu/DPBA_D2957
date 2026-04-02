-- for changing the values of single cell or multiple cell or multiple rows based on some conditinos

-- updating a single value 

-- for updating the single value we will write sql query like show below

UPDATE lfl.auth_user 
SET login_id = 'AF1234565674'
WHERE id = 3;

-- update the failed atempts to 0 where failed attempts are other than 0

-- this conditino is called as generic condtion where we don't have much condition on updating the cell values
-- when we have situvations like this then we will write the sql query as show below withouth using the where condition

UPDATE lfl.auth_user
SET lfl.auth_user.failed_attempts = 0;

-- updating the multiple columns

UPDATE lfl.auth_user 
SET lfl.auth_user.role = "Admin", lfl.auth_user.status="Active"
WHERE id = 3;



-- updating the multiple rows
-- update the user age by 1 means age = age + 1;

UPDATE lfl.students
SET lfl.students.age = lfl.students.age + 1
where lfl.students.age > 20;

UPDATE lfl.students
SET lfl.students.age = lfl.students.age + 1
where lfl.students.sno in (2,3);


-- update table data based on other table data

UPDATE lfl.educationdetails e
JOIN lfl.students s ON e.educationId = s.educationId
SET e.highestQualification = " MSC"
WHERE s.sno = 1;


-- update one column based on the other column value ( Conditional Update)
UPDATE lfl.auth_user a
SET a. status = 
CASE 
	WHEN a.failed_attempts >= 3 THEN 'Blocked'
    ELSE 'Active'
END;

-- REAL TIME EXAMPLE OF WRITING THE ABOVE TYPE OF QUERY
-- CHECK THE BATCH CLOSE DATE AND COMPARE WITH TODAY DATE IF THE DATE IS LESS THEN MAKE THE 
-- BATCH STATUS AS COMPLETED ELSE WE WILL MAKE IT AS ACTIVE 






