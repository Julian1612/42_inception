CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'jschneid'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'jschneid'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '123';
