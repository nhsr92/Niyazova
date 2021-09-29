USE vk2;

-- 1.Пусть задан некоторый пользователь. 
-- Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).

-- на 8 урок. соединение таблиц join
SELECT 
	u.firstname,
	m.from_user_id,
	m.to_user_id,
	count(*) AS total_message
FROM 
	users u
	inner JOIN 
		messages m 
	ON
		u.id = m.from_user_id and m.to_user_id = 100
GROUP BY
	m.from_user_id
ORDER BY 
 	total_message DESC
LIMIT 1

-- На 6 урок		
SELECT 
	from_user_id,
	count(*) AS total_message
FROM 
	messages
WHERE 
	to_user_id IN (100)
GROUP BY
	from_user_id
ORDER BY 
 	total_message DESC
LIMIT 1



-- 2.Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..
-- на 6 урок
SELECT 
	count(*) AS 'лайков, которые получили пользователи младше 10 лет'
FROM likes 
WHERE user_id IN (
  SELECT user_id 
  FROM profiles
  WHERE datediff(DATE(now()),birthday) / 365.25 < 10
  )


-- c Join соединением на 8 урок
SELECT COUNT(*) AS 'test: лайков, которые получили пользователи младше 10 лет'
FROM likes l
INNER JOIN profiles p on l.user_id = p.user_id and 
p.user_id IN (
  SELECT user_id
  FROM profiles
  WHERE datediff(DATE(now()),birthday) / 365.25 < 10
  )

 -- 3.Определить кто больше поставил лайков (всего): мужчины или женщины.
  
 SELECT user_id,
    CASE (gender)
         WHEN 'm' THEN 'male' -- мужской пол
         WHEN 'f' THEN 'female' -- женский пол
         ELSE 'unknown' END AS gender
  FROM profiles;
 
 -- в поле было значение NULL, пришлось заполнить его
 UPDATE profiles 
 SET 
  gender = 'f' -- 'm'
 WHERE 
  user_id %2 != 0 -- user_id %2 = 0

-- на 6 урок без JOIN 
SELECT
	count(user_id),
	( SELECT gender FROM profiles WHERE likes.user_id = profiles.user_id ) AS 'gndr'
FROM
	likes
GROUP BY 
	gndr 

-- с JOIN к 8 уроку
SELECT
	count(*) AS 'total',
	(SELECT count(*) FROM likes l INNER JOIN profiles p ON l.user_id = p.user_id WHERE p.gender = 'f') AS 'female',
	(SELECT count(*) FROM likes l INNER JOIN profiles p ON l.user_id = p.user_id WHERE p.gender = 'm') AS 'male'
FROM
	likes l 