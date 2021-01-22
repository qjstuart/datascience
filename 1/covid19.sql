DROP DATABASE IF EXISTS covid19;

create database covid19;


DROP USER IF EXISTS 'quentin'@'localhost';
DROP USER IF EXISTS 'quentin'@'%';
CREATE USER 'quentin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON covid19.* TO 'quentin'@'localhost';
CREATE USER 'quentin'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON covid19.* TO 'quentin'@'%';





