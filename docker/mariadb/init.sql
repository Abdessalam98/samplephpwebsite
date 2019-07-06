-- We can create database through script
CREATE DATABASE IF NOT EXISTS db;
-- We specify the database to use
USE db;

GRANT ALL PRIVILEGES ON *.* TO 'php_user'@'%' IDENTIFIED BY 'sdrugntqqsciur';

-- Table creation test
-- We  create uids table
CREATE TABLE IF NOT EXISTS uids
( 
    id INT(11) NOT NULL AUTO_INCREMENT,
    value INT NOT NULL,
    PRIMARY KEY (id)
);

-- We insert values
INSERT INTO uids
    (value)
VALUES
    (1);
