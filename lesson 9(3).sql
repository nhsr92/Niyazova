-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

SET GLOBAL log_bin_trust_function_creators = 1; 

delimiter //
CREATE FUNCTION get_hour ()
 RETURNS INT NOT DETERMINISTIC
 BEGIN
 	RETURN HOUR(NOW());
 END//
delimiter ; 

delimiter //
CREATE FUNCTION hello ()
RETURNS TINYTEXT NOT DETERMINISTIC
BEGIN
	DECLARE hour INT;
	SET hour = HOUR(NOW());
	CASE
		WHEN hour BETWEEN 0 AND 5 THEN
			RETURN "Доброй ночи";
		WHEN hour BETWEEN 6 AND 11 THEN
			RETURN "Доброе утро";
		WHEN hour BETWEEN 12 AND 17 THEN
			RETURN "Добрый день";
		WHEN hour BETWEEN 18 AND 23 THEN
			RETURN "Добрый вечер";
	END CASE;
END //
delimiter ;

delimiter //
CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Both name and description are NULL';
	END IF;
END//

INSERT INTO products (name, description, price, catalog_id) VALUES 
('Intel Core i4-5500', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7878.00, 8)//
delimiter ;

delimiter //
CREATE TRIGGER validate_name_description_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Both name and description are NULL';
	END IF;
END//
delimiter ;

delimiter //
CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE fs DOUBLE;
	SET fs = SQRT(5);
    RETURN (POW((1 + fs) / 2.0, num) + POW((1 - fs) / 2.0, num)) / fs;
END//
delimiter ;
