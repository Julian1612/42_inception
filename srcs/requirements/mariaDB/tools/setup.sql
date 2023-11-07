CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'jschneid'@'%' IDENTIFIED BY 'jschneid';
GRANT ALL PRIVILEGES ON wordpress.* TO 'jschneid'@'%';
FLUSH PRIVILEGES;
ALTER USER 'jschneid'@'%' IDENTIFIED BY 'jschneid';

