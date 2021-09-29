DROP TABLE IF EXISTS music;
CREATE table music (
	id SERIAL,
	track varchar(250) DEFAULT null,
	executor varchar(200) DEFAULT NULL,
    FOREIGN KEY music(id) REFERENCES users(id),
  	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS my_music;
CREATE table my_music (
	id SERIAL,
	name varchar(100) DEFAULT NULL,
    executor_id BIGINT UNSIGNED DEFAULT NULL,
	genre_id BIGINT UNSIGNED NULL,
    FOREIGN KEY (executor_id) REFERENCES music(id),
    FOREIGN KEY (genre_id) REFERENCES music(id),
  	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS games;
CREATE table games (
	id SERIAL,
	developer_id varchar(250) DEFAULT null,
	version_id DATETIME DEFAULT NOW(),
    FOREIGN KEY games(id) REFERENCES users(id),
  	PRIMARY KEY (id)
 );