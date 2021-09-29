-- mysql -u root -p vk2 < _vk_dump.sql
USE vk2;

SELECT distinct firstname
FROM users;

ALTER TABLE profiles
ADD is_active bool DEFAULT TRUE;

UPDATE profiles 
SET
  is_active = FALSE
WHERE 
  datediff(DATE(now()),birthday) / 365.25 < 18;
 
-- INSERT INTO messages VALUES
-- ('102','3','2','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','2022-08-28 22:44:29');
-- 

DELETE FROM messages 
WHERE
created_at >= current_date();
 
 