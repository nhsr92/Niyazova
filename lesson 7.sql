USE shop;

SELECT * FROM users;
SELECT * FROM orders;
SELECT * FROM orders_products;

INSERT INTO orders(user_id)
SELECT id FROM users WHERE name = 'Мария';

INSERT INTO orders_products(order_id, product_id, total)
SELECT last_insert_id(), id, 2 FROM products
WHERE name = 'AMD FX-8320E';

INSERT INTO orders(user_id)
SELECT id FROM users WHERE name = 'Иван';

INSERT INTO orders_products(order_id, product_id, total)
SELECT last_insert_id(), id, 1 FROM products
WHERE name IN ('ASUS ROG MAXIMUS X HERO', 'Intel Core i3-8100');

INSERT INTO orders(user_id)
SELECT id FROM users WHERE name = 'Сергей';

INSERT INTO orders_products(order_id, product_id, total)
SELECT last_insert_id(), id, 1 FROM products
WHERE name IN ('Gigabyte H310M S2H', 'MSI B250M GAMING PRO');

SELECT DISTINCT user_id FROM orders;

SELECT * FROM users u JOIN orders o ON u.id = o.user_id;

SELECT * FROM products;
SELECT * FROM catalogs;

SELECT p.id,p.name, p.price, c.name
FROM products p LEFT JOIN catalogs c ON p.catalog_id = c.id;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
id SERIAL PRIMARY KEY, 
`from` VARCHAR(255) COMMENT 'Город отправления',
`to` VARCHAR(255) COMMENT 'Город прибытия'
 ) COMMENT = 'Рейсы';
 
INSERT INTO flights(`from`,`to`) VALUES
('moscow', 'omsk'),
('novgorod', 'kazan'),
('irkutsk', 'moscow'),
('omsk', 'irkutsk'),
('moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
id SERIAL PRIMARY KEY, 
label VARCHAR(255) COMMENT 'Код города',
name VARCHAR(255) COMMENT 'Название города'
 ) COMMENT = 'Справочник городов';
 
INSERT INTO cities(label, name) VALUES
('moscow', 'Москва'),
('novgorod', 'Новгород'),
('irkutsk', 'Иркутск'),
('omsk', 'Омск'),
('kazan', 'Казань');

SELECT id,
(SELECT name FROM cities WHERE label = flights.from) AS `from`,
(SELECT name FROM cities WHERE label = flights.to) AS `to`
FROM flights;