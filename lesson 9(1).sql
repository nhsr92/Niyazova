-- Практическое задание по теме “Транзакции, переменные, представления"

SELECT * FROM shop.users;
START TRANSACTION;
INSERT INTO sample.users SELECT id, name FROM shop.users WHERE id = 2;
DELETE FROM shop.users WHERE id = 2 LIMIT 1;
COMMIT;

SELECT * FROM sample.users;


SELECT p.name, c.name 
FROM products p JOIN catalogs c ON p.catalog_id = c.id;

CREATE OR REPLACE VIEW products_catalogs AS
SELECT p.name AS product, c.name AS catalogs
FROM products p JOIN catalogs c ON p.catalog_id = c.id;

-- (по желанию):
DROP TABLE IF EXISTS posts;
CREATE TABLE IF NOT EXISTS posts (
 	id SERIAL PRIMARY KEY,
 	name varchar(255),
 	created_at DATE NOT NULL
 	);
 
 INSERT INTO posts VALUES
 (1, 'Jessalyn', '2018-08-01'),
 (2, 'Evangelia',  '2016-08-04'),
 (3, 'Bryn',  '2018-08-16'),
 (4, 'Cooper', '2018-08-17');

 SELECT * FROM posts;

DROP TABLE IF EXISTS last_days;
CREATE TEMPORARY TABLE last_days (
DAY int
);

INSERT INTO last_days VALUES
(0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30);

SELECT date(date('2018-08-31') - INTERVAL l.day DAY) AS DAY FROM last_days l; 

SELECT date(date('2018-08-31') - INTERVAL l.day DAY) AS DAY,
NOT isnull(p.name) AS order_exist
FROM last_days l LEFT JOIN posts p ON date(date('2018-08-31') - INTERVAL l.day DAY) = p.created_at
ORDER BY
day;


DROP TABLE IF EXISTS posts_new;
CREATE TABLE IF NOT EXISTS posts_new(
 	id SERIAL PRIMARY KEY,
 	name varchar(255),
 	created_at DATE NOT NULL
 	);

INSERT INTO posts_new VALUES
 (1, 'первая', '2021-01-04'),
 (2, 'вторая', '2021-02-12'),
 (3, 'третья', '2021-03-19'),
 (4, 'четвертая', '2021-04-26'),
 (5, 'пятая', '2021-05-31'),
 (6, 'шестая', '2021-06-02'),
 (7, 'седьмая', '2021-07-17'),
 (8, 'восьмая', '2021-08-25'),
 (9, 'девятая', '2021-09-22'),
 (10, 'десятая', '2021-10-21');


DELETE posts_new FROM posts_new
JOIN(SELECT created_at FROM posts_new ORDER BY created_at DESC LIMIT 5, 1) AS delpst
ON posts_new.created_at <= delpst.created_at;


SELECT * FROM posts_new;