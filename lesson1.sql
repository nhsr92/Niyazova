MySQL
unit 1:

mysql>:
 SHOW DATABASES;
 CREATE DATABASE example;
 SHOW DATABASES;
 USE example;
 CREATE TABLE users (id SERIAL, name VARCHAR(100) NOT NULL UNIQUE);
 SHOW TABLES;E
 exit
:\Users\rsh>:
    mysql -u root -p
    mysqldump -u root -p
    mysqldump -u root -p example
    mysqldump -u root -p example > example.sql
    dir
    mysql -u root -p
mysql> 
CREATE DATABASE sample;
exit
:\Users\rsh>:
mysql -u root -p sample < example.sql
mysql -u root -p

mysql> 
USE sample;
SHOW TABLES;
exit

:\Users\rsh>
mysql
exit