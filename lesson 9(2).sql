-- Практическое задание по теме “Администрирование MySQL” ;
-- SET GLOBAL log_bin_trust_function_creators = 1; 
USE shop;
DROP USER 'shop_read'@'localhost';
CREATE USER 'shop_read'@'localhost' IDENTIFIED BY 'pass';
GRANT SELECT, SHOW VIEW ON shop.* TO 'shop_read'@'localhost';

-- mysql -u shop_read -p
CREATE USER shop@localhost IDENTIFIED BY '';
GRANT ALL ON shop.* TO 'shop'@'localhost';
 
DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
 id SERIAL PRIMARY KEY,
 name VARCHAR(255),
 `password`VARCHAR(255)
 );

INSERT INTO accounts (name, `password`) VALUES
  ('Геннадий', 'olpp89'),
  ('Наталья', 'ujmiki78'),
  ('Александр', 'rfvtgb45'),
  ('Сергей', 'tgbyhn56'),
  ('Иван', 'edcrfv34'),
  ('Мария', 'qazwsx12');

 SELECT * FROM accounts;
 
CREATE VIEW username AS SELECT id, name FROM accounts;
SELECT * FROM username;

CREATE USER 'user_read'@'localhost' IDENTIFIED BY '';
GRANT SELECT(id, name) ON shop.username TO 'user_read'@'localhost';