-- 1. Верификация успешной регистрации.
-- Проверяем, что новый пользователь 'User1' корректно записался в базу данных.
SELECT id, username, email 
FROM users 
WHERE username = 'User1';

-- 2. Проверка бизнес-логики: Контроль максимального возраста
-- Ищем пользователей, нарушивших ограничение «Максимальный возраст — 90 лет».
SELECT id, username, birthday 
FROM users 
WHERE birthday < '1936-01-01';

-- 3. Проверка связи сущностей с помощью объединения двух таблиц (JOIN)
-- Находим имя и электронную почту владельца корзины под номером 5.
SELECT carts.id AS cart_id, users.username, users.email
FROM carts
INNER JOIN users ON carts.user_id = users.id
WHERE carts.id = 5;