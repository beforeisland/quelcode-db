SELECT u.name AS 'ユーザー名', c.chat_name AS 'チャットルーム名', CAST(p.joined_at AS DATE) AS '参加日時(年月日)'
FROM participants AS p
JOIN users AS u
    ON p.user_id = u.id
JOIN chat_rooms AS c
    ON p.chat_room_id = c.id
WHERE u.is_deleted = 0 AND c.is_deleted = 0
ORDER BY p.joined_at ASC;
