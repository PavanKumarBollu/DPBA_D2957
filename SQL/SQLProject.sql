CREATE DATABASE IF NOT EXISTS LFL;

USE LFL;

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