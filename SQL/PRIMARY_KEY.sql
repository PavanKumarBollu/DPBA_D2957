USE lfl;

CREATE TABLE IF NOT EXISTS lfl.user_profile(
id BIGINT PRIMARY KEY ,
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




