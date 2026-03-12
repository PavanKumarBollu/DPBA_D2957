CREATE DATABASE IF NOT EXISTS LFL;

USE LFL;

-- creating the auth_user Table  
CREATE TABLE IF NOT EXISTS auth_user(
id BIGINT,
login_id VARCHAR(50),
password VARCHAR(255),
role VARCHAR(50),
status VARCHAR(20),
failed_attempts INT DEFAULT 0,
account_locked BOOLEAN,
is_active BOOLEAN,
created_at TIMESTAMP,
updated_at TIMESTAMP
);

-- insert a single record into the auth_user table
INSERT INTO lfl.auth_user (
	id, 
	login_id, 
    password, 
    role, 
    status, 
    failed_attempts, 
    account_locked,
	is_active, 
    created_at, 
    updated_at) 
    values (
    1,
    "AF1234567890",
    "12345",
    "Student",
    "Active",
    2,
    FALSE,
    TRUE,
    now(),
    now()
);

-- insert a single record into the auth_user table
INSERT INTO lfl.auth_user () 
    values (   
    2,    "AF1234567980",     "54321",     "Student",     "Active",
    2,    FALSE,    TRUE,    now(),    now() 
);

-- insert a single record into the auth_user table( don't Do this)
INSERT INTO lfl.auth_user () 
    values (   
    3,    "AF1234567980",     "Student",     "111222",     "Active",
    2,    FALSE,    TRUE,    now(),    now()    );


INSERT INTO lfl.auth_user (
	login_id,    id, 	password,     role,    status,   account_locked,  created_at,    updated_at, is_active) 
    values (  "AF1234567890",  4,    "12345",    "Student",     "Active",      FALSE,     now(),     now(),TRUE
    );
    
INSERT INTO lfl.auth_user (
	login_id,    id, 	password,     role,    status,   account_locked,  created_at,    updated_at) 
    values (  "AF1234567890",  5,    "12345",    "Student",     "Active",      FALSE,     now(),     now() );


-- Errror 1136 and if you pass 10 values then error of 1264
-- INSERT INTO lfl.auth_user ()
--    values (    1,  "AF1234567890",  "12345",    "Student",     "Active",      FALSE,     now(),     now() );


-- insert multiple Records 
INSERT INTO lfl.auth_user (
	id, login_id,	password,     role,    status,   account_locked,  is_active, created_at,    updated_at) 
    values 
    (6, "AF1234567890",  "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (7, "AF1234567891",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (8, "AF1234567892",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (9, "AF1234567893",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (10, "AF1234567894",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (11, "AF1234567895",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now());














