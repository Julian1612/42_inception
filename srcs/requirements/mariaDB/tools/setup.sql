CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'julian'@'%' IDENTIFIED BY 'julian123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'julian'@'%';
FLUSH PRIVILEGES;
ALTER USER 'julian'@'%' IDENTIFIED BY 'julian123';

