CREATE DATABASE IF NOT EXISTS LFL;

USE LFL;

-- creating the auth_user Table  
CREATE TABLE IF NOT EXISTS auth_user(
id BIGINT,
login_id VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL,
role VARCHAR(50) NOT NULL ,
status VARCHAR(20)NOT NULL ,
failed_attempts INT DEFAULT 0,
account_locked BOOLEAN DEFAULT FALSE,
is_active BOOLEAN DEFAULT TRUE,
created_at TIMESTAMP NOT NULL ,
updated_at TIMESTAMP NOT NULL
);

ALTER TABLE lfl.auth_user ADD CONSTRAINT pk PRIMARY KEY (id);

-- insert a single record into the auth_user table
INSERT INTO lfl.auth_user (
	id, 	login_id,     password,     role,    status,     failed_attempts, 
    account_locked,	is_active,     created_at,     updated_at) 
    values (    1,    "AF1234567890",    "12345",    "Student",   "Active",
    2,    FALSE,    TRUE,    now(),    now());

-- insert a single record into the auth_user table
INSERT INTO lfl.auth_user () 
    values (   
    2,    "AF1234567980",     "54321",     "Student",     "Active",
    2,    FALSE,    TRUE,    now(),    now() 
);

-- insert a single record into the auth_user table( don't Do this)
INSERT INTO lfl.auth_user () 
    values (   
    3,    "AF1234567981",     "Student",     "111222",     "Active",
    2,    FALSE,    TRUE,    now(),    now()    );


INSERT INTO lfl.auth_user (
	login_id,    id, 	password,     role,    status,   account_locked,  created_at,    updated_at, is_active) 
    values (  "AF1234567800",  4,    "12345",    "Student",     "Active",      FALSE,     now(),     now(),TRUE
    );
    


-- Errror 1136 and if you pass 10 values then error of 1264
 INSERT INTO lfl.auth_user ()
   values (    1,  "AF1234567890",  "12345",    "Student",     "Active",      FALSE,     now(),     now() );


-- insert multiple Records 
INSERT INTO lfl.auth_user (
	id, login_id,	password,     role,    status,   account_locked,  is_active, created_at,    updated_at) 
    values 
    (6, "AF1237567890",  "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (7, "AF1237567891",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (8, "AF1239567892",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (9, "AF1234567893",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (10, "AF1234567894",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now()),
    (11, "AF1234567895",   "123",    "Student",     "Active",  TRUE,    FALSE,     now(),     now());


CREATE TABLE IF NOT EXISTS lfl.user_profile(
id BIGINT PRIMARY KEY,
user_id VARCHAR(50),
first_name VARCHAR(100),
middle_name VARCHAR(100),
last_name VARCHAR(100),
surname VARCHAR(100),
email VARCHAR(150),
email_verified BOOLEAN,
mobile_number BIGINT, 
mobile_verified BOOLEAN,
short_description VARCHAR(500),
city VARCHAR(100),
state VARCHAR(100),
country VARCHAR(100),
center_code VARCHAR(50),
is_active BOOLEAN,
created_at TIMESTAMP,
updated_at TIMESTAMP
);




CREATE TABLE IF NOT EXISTS lfl.batch_trainer(
id BIGINT,
batch_id BIGINT, 
trainer_id VARCHAR(50),
is_primary BOOLEAN DEFAULT  FALSE,
is_active BOOLEAN  DEFAULT TRUE,
created_at TIMESTAMP,
updated_at TIMESTAMP,

PRIMARY KEY(id) -- specifiy the id as primary key
);


INSERT INTO lfl.auth_user (
	login_id,    id, 	password,     role,    status,   account_locked,  created_at,    updated_at, is_active) 
    values (  "AF1233267845",  12,    null,    "Student",     "Active",      FALSE,     now(),     now(), null );










