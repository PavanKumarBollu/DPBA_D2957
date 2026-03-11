-- CREATE DATABASE dpba2957;

CREATE DATABASE IF NOT EXISTS dpba2957;

USE dpba2957;


-- CREATE TABLE  users(
-- sno int primary key,
-- stdfname varchar(50), 
-- stdlname varchar(50),
-- qualification varchar(50),
-- gender varchar(5)
-- );

CREATE TABLE IF NOT EXISTS users(
sno int primary key,
stdfname varchar(50), 
stdlname varchar(50),
qualification varchar(50),
gender varchar(5)
);
