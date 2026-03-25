SELECT * FROM auth_user; 

-- if we execute the above line directly we may get the following error 

-- 15:59:36	SELECT * FROM auth_user LIMIT 0, 1000	Error Code: 1046. No database selected Select the default DB to be used by double-clicking its name in the SCHEMAS list in the sidebar.	0.000 sec
-- 16:05:04	SELECT * FROM auth_user LIMIT 0, 1000	Error Code: 1146. Table 'cmis.auth_user' doesn't exist	0.016 sec

-- To aviod the above mentioned error then we can use the following syntax where we will mention the table name based on the database name

SELECT * FROM lfl.auth_user;

-- Select one record
-- to select a single record from a table we need to apply some condition in sql to apply some condition we need to use the Where clause

SELECT * FROM lfl.auth_user WHERE id = 5;


-- the way which we mentioned * means every field from the table we are selecting someting there will some feilds which user should not be infomed 
-- in our case with the auth_user table we will never display the following feilds to user 
-- Role
-- status
-- account_locked
-- is_active
-- created_at
-- updated_at
-- since this table we are reading the data from only one table it is okay when it comes to the performance but 
-- in the real time we will never recomand to use the * for selecting the data from any table

-- to avoid the above mentioned problem always use the feilds names from data retraivel 


SELECT id,login_id, password,failed_attempts FROM lfl.auth_user WHERE id = 5;


SELECT login_id, password FROM lfl.auth_user WHERE id = 5;

-- display all the user login_id 

SELECT login_id FROM lfl.auth_user;

-- select all the records where the role is student

SELECT id,login_id, password,failed_attempts , role FROM lfl.auth_user WHERE role = "Student";


-- select the student record wher the student ids are from 1-5 or 5-10 or 4-8 
-- case 1
SELECT id, login_id, password, failed_attempts 
FROM lfl.auth_user WHERE id = 1 or id = 2 or id = 3 or id = 4 or id = 5;

-- if we want to select more than 100 records like that the above query is quiute complex to write 
-- so we can do the same job like shown below
-- case 2
SELECT id, login_id, password, failed_attempts 
FROM lfl.auth_user WHERE id in (1,2,3,4,5);

-- in the second case also we we want to fetch more number of records its complex
-- then follow the next way to make it more simple 
-- case 3:
SELECT id, login_id, password, failed_attempts 
FROM lfl.auth_user WHERE id between 1 and 5;

SELECT id, login_id, password, failed_attempts 
FROM lfl.auth_user WHERE id between 3 and 8;

-- when you want to select couple of records then chose either case1 
-- when you want to select random records based on the ids then go for case2 
SELECT id, login_id, password, failed_attempts 
FROM lfl.auth_user WHERE id in (1,4,3,7,10,12, 100);
-- when you want to select lots of records then chose the case3 style
-- here each style has their won requirement based on the requirement we will choose the style 

-- two ranges at a time
SELECT id, login_id, password, failed_attempts 
FROM lfl.auth_user 
WHERE 
(id between 1 and 3) 
or
( id between 6 and 8)
or
(id between 10 and 15);

-- identify the records where the failed_attempts are 3 but still the status is active

SELECT * FROM lfl.auth_user where failed_attempts = 3 and status = "Active";