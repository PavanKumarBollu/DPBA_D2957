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













