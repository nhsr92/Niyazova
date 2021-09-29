DROP DATABASE IF EXISTS my_shop;
CREATE DATABASE my_shop;

USE my_shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  mobile bigint unsigned,
  email varchar(250),
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW()
) COMMENT = 'пользователь';

INSERT INTO users (name, birthday_at, mobile, email, created_at, updated_at) VALUES
  ('Tweedell', '2021-02-23', '0702225231', 'rtweedell0@stumbleupon.com', '2021-01-18', '2020-12-07'),
  ('Jakes', '2020-10-12', '9508209178', 'sjakes1@ameblo.jp', '2021-06-09', '2021-03-13'),
  ('Cowlard', '2020-10-20', '8313107146', 'bcowlard2@dailymail.co.uk', '2021-06-29', '2021-02-16'),
  ('Toffts', '2021-05-11', '2901279457', 'ntoffts3@apple.com', '2021-04-17', '2020-12-17'),
  ('Davidwitz', '2021-04-18', '6670326742', 'kdavidwitz4@dagondesign.com', '2021-07-12', '2020-11-15'),
  ('Pattrick', '2020-09-25', '8297432920', 'mpattrick5@ft.com', '2021-02-11', '2021-01-18'),
  ('Saynor', '2021-06-24', '1855908085', 'bsaynor6@ask.com', '2021-02-05', '2021-09-04'),
  ('Badder', '2021-07-09', '2473451265', 'gbadder7@unc.edu', '2020-10-02', '2021-07-18'),
  ('Bertlin', '2021-05-28', '7050729507', 'abertlin8@simplemachines.org', '2021-08-26', '2021-02-15'),
  ('Cockman', '2020-12-07', '5385427926', 'mcockman9@technorati.com', '2021-05-17', '2021-03-23');

 
DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
  id SERIAL PRIMARY KEY,
  user_id bigint UNSIGNED,
  payment_id bigint UNSIGNED,
  delivery_id bigint UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'заказы';

INSERT INTO orders (user_id, payment_id, delivery_id, created_at, updated_at) VALUES 
  ( 1, '2', '9606039234', '2021-08-05', '2020-12-06'),
  ( 3, '10', '0404401023', '2021-03-17', '2021-06-29'),
  ( 1, '64', '4114853030', '2020-12-14', '2021-04-24'),
  ( 8, '40', '2581596694', '2021-03-06', '2020-10-18'),
  ( 5, '13', '4091289045', '2021-04-20', '2021-06-07'),
  ( 6, '00', '7382674517', '2020-12-23', '2021-06-26'),
  ( 6, '56', '5733139447', '2021-05-21', '2020-10-24'),
  ( 7, '05', '1934709999', '2021-03-27', '2021-08-23'),
  ( 4, '25', '6847762241', '2021-05-06', '2021-04-30'),
  ( 9, '97', '7537406936', '2021-04-13', '2021-04-09');
 
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs(name) VALUES
('Helth'),
('Beauty'),
('Dietary');


DROP TABLE IF EXISTS products;
CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'товары';

INSERT INTO products (name, description, price, catalog_id) VALUES
 ('Spiruline', 'Et sunt nemo dicta molestiae labore quam culpa. Voluptatem et occaecati ea ex repellendus consequatur aut quasi. Dolor soluta facilis enim.', '6606349.54', 0),
 ('Tianine', 'Quaerat velit et voluptate ut et est. Aut odit voluptatum quas est ipsum. Sapiente quis recusandae et blanditiis atque. Et expedita ab corporis velit. Alias et quos natus eum voluptas.', '0.00', 9),
 ('Tirozine', 'Porro aliquid animi qui itaque atque vel nihil. Veritatis non tempore distinctio ut esse eveniet.', '1.52', 2),
 ('Complimenti', 'Nemo non ut et. Omnis quia quis maiores unde eveniet. Iure odit voluptas nobis aperiam autem accusamus. Quia corporis est optio mollitia accusantium hic sit voluptatem.', '19.91', 0),
 ('Cremme Puff', 'Sunt ratione iste aut fugiat officiis est. Ut nulla quam quas ipsum nobis quidem ratione. Omnis enim at qui sunt et ratione nihil. Expedita consequatur quia exercitationem eos aliquid inventore enim.', '0.00', 2),
 ('Aravia', 'Dicta qui consequatur explicabo. Exercitationem deleniti reiciendis modi aspernatur sed modi tempora ad.', '25134827.00', 2),
 ('Senana', 'Aut animi enim cum eligendi sequi fuga at. Natus ipsam quos a voluptates. Quae in ducimus temporibus beatae nisi rerum.', '742.22', 0),
 ('LIFTHENG', 'Commodi omnis perspiciatis et non ut deleniti et. Recusandae est dolore est nobis iusto nemo nobis adipisci. Magni enim consequatur tempore quia fugit aut corporis. Est perspiciatis unde consequatur dolores non voluptas.', '10243158.96', 4),
 ('SIOE', 'Non debitis earum aut omnis et. Harum voluptatem eos et. Consequuntur impedit magni neque beatae voluptas sit sunt eius.', '0.68', 0),
 ('SersanLove', 'Non omnis eos beatae consequatur sit ut inventore aliquam. Perspiciatis repudiandae in repellendus aspernatur est autem repellendus. Non aut distinctio ut sed. Vitae autem officiis maxime et molestiae.', '522.43', 8);


DROP TABLE IF EXISTS product_images;
CREATE TABLE product_images(
id SERIAL PRIMARY KEY,
product_id INT UNSIGNED,
image varchar(300)
) COMMENT = 'фото товаров';

INSERT INTO product_images (product_id, image) VALUES 
 (1, 'http://dummyimage.com/171x100.png/dddddd/000000'),
 (2, 'http://dummyimage.com/181x100.png/ff4444/ffffff'),
 (3, 'http://dummyimage.com/249x100.png/cc0000/ffffff'),
 (4, 'http://dummyimage.com/186x100.png/ff4444/ffffff'),
 (5, 'http://dummyimage.com/103x100.png/cc0000/ffffff'),
 (6, 'http://dummyimage.com/235x100.png/dddddd/000000'),
 (7, 'http://dummyimage.com/239x100.png/5fa2dd/ffffff'),
 (8, 'http://dummyimage.com/159x100.png/dddddd/000000'),
 (9, 'http://dummyimage.com/219x100.png/ff4444/ffffff'),
 (10, 'http://dummyimage.com/239x100.png/dddddd/000000');


DROP TABLE IF EXISTS storehouse;
CREATE TABLE storehouse(
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'склады';

INSERT INTO storehouse(storehouse_id, product_id , value) values
(2, 1, 38),
(3, 2, 87),
(1, 3, 19),
(2, 4, 86),
(2, 5, 52),
(3, 6, 13),
(3, 7, 49),
(2, 8, 45),
(3, 9, 53),
(2, 10, 37);


DROP TABLE IF EXISTS manufacturer;
CREATE TABLE manufacturer(
id SERIAL PRIMARY KEY,
name varchar(256),
country_id varchar(255),
created_at DATETIME DEFAULT NOW()
) COMMENT = 'производитель';

INSERT INTO manufacturer(name, country_id) VALUES 
 ('Browsedrive', 'Germany'),
 ('Skyndu', 'Russia'),
 ('Demivee', 'Russia'),
 ('Vitz', 'Russia'),
 ('Kayveo', 'Russia'),
 ('Tavu', 'Germany'),
 ('Skippad', 'Germany'),
 ('Reallinks', 'Russia'),
 ('Tagtune', 'Japan'),
 ('Skajo', 'Russia');


DROP TABLE IF EXISTS delivery;
CREATE TABLE delivery(
id SERIAL PRIMARY KEY,
user_id bigint UNSIGNED,
order_id INT UNSIGNED,
date_to_delivery datetime,
status enum('not delivered','delivered','transit'),
created_at DATETIME DEFAULT NOW()
) COMMENT = 'доставка';

INSERT INTO delivery(user_id, order_id, date_to_delivery, status) VALUES 
 (3, 9, '1986-12-16 02:38:57', 'delivered'),
 (7, 3, '1983-03-27 03:08:59', 'delivered'),
 (7, 3, '2001-06-04 17:36:37', 'delivered'),
 (1, 2, '2015-06-14 09:38:15', 'delivered'),
 (5, 7, '2021-07-27 22:25:56', 'delivered'),
 (2, 6, NULL, 'transit'),
 (4, 9, '1976-03-14 04:52:04', 'delivered'),
 (4, 1, '2007-03-02 09:05:25', 'not delivered'),
 (3, 7, NULL, 'transit'),
 (4, 8, '1994-06-21 05:25:51', 'delivered');


DROP TABLE IF EXISTS review;
CREATE TABLE review(
id SERIAL PRIMARY KEY,
user_id bigint UNSIGNED,
body text,
product_id bigint UNSIGNED,
created_at DATETIME DEFAULT NOW()
) COMMENT = 'отзывы';

INSERT INTO review (user_id, body, product_id) VALUES 
 ('9', 'Cum aut neque culpa aut officia sequi nobis quos. Repellat cupiditate sint sit eveniet alias eum assumenda. Voluptatem et id nulla tempora.', '0'),
('2', 'Eius pariatur occaecati est. In facilis blanditiis accusamus nisi quasi. Ullam adipisci explicabo non. Est aspernatur laborum doloremque aliquam qui.', '8'),
('0', 'Perferendis porro praesentium exercitationem doloribus possimus earum. Mollitia sed repellat culpa quam corporis non. Sint rem quisquam est quo. Corrupti magnam perferendis incidunt voluptas neque aut.', '1'),
('7', 'Aut nostrum deleniti id quo rerum et qui. Ea id consectetur dolorum nisi. Saepe aut eum architecto quibusdam.', '2'),
('3', 'Quia et nesciunt earum incidunt et expedita. Corporis est assumenda quas dolor et ipsa sit. Eveniet sit quod ut doloremque.', '3'),
('1', 'Non nam earum veniam dolores ullam dicta. Nesciunt tempora accusantium fuga aut nihil enim corporis odit. Sint quidem saepe omnis. Dolore illum minima praesentium tempore.', '4'),
('8', 'Harum labore voluptatibus quam sed. Vero veniam sequi eius et dolor eveniet. Voluptates fugiat ea omnis similique dicta deserunt molestiae. Praesentium dolor aperiam repellat dolores dolorum vitae.', '5'),
('4', 'Temporibus consequuntur quia eos id. Sed sit officia tenetur enim facere iusto repellendus nihil. Ipsum reiciendis ut fugit omnis odio. Laudantium commodi et quia quis qui magnam facilis.', '2'),
('8', 'Facere voluptatem in ab suscipit alias odio accusantium. Qui incidunt vel fuga deserunt. Non doloremque consectetur dolores excepturi et sint sit. Adipisci quia iure libero iste ut.', '6'),
('5', 'Ad delectus excepturi sint odio. Nemo consequatur aut blanditiis nisi. Quam autem et placeat eius. Ab quos laboriosam occaecati necessitatibus quo aspernatur.', '8');


DROP TABLE IF EXISTS payment;
CREATE TABLE payment(
id SERIAL PRIMARY KEY,
`type` enum('online','cash'),
`sum` DECIMAL(12.2),
status enum('paid','unpaid','pending'),
created_at DATETIME DEFAULT NOW()
) COMMENT = 'платежи';

INSERT INTO payment(`type`, `sum`, status) VALUES 
 ('cash', '7103', 'unpaid'),
 ('cash', '26705', 'pending'),
 ('cash', '14941543', 'unpaid'),
 ('online', '12448', 'unpaid'),
 ('online', '4', 'pending'),
 ('online', '258678049', 'unpaid'),
 ('cash', '35', 'pending'),
 ('cash', '1', 'pending'),
 ('online', '9', 'pending'),
 ('cash', '43428077', 'unpaid');