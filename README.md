# Initialize MySQL docker container
docker run --name=task1 -p 0.0.0.0:3306:3306 -e MYSQL_ROOT_PASSWORD=password -d mysql/mysql-server:8.0

# Start task1 container
docker start task1

# Enter docker bash
docker exec -it task1 bash

# Grant root privileges for localhost (before executing sql file)
CREATE USER 'root'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

# Execute SQL file to create database with user privileges
docker exec -i task1 mysql -h0.0.0.0 -uroot -ppassword < covid19.sql
