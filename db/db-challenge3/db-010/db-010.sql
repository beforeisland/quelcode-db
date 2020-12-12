SELECT u.name AS 'ユーザー名', po.posted_at AS '投稿日時', c.chat_name AS 'チャットルーム名'
FROM posts AS po
JOIN users AS u
    ON po.posted_user_id = u.id
JOIN chat_rooms AS c
    ON po.chat_room_id = c.id
WHERE po.posted_at IN (SELECT MAX(posted_at) FROM posts AS po WHERE u.is_deleted = 0 AND po.is_deleted = 0 GROUP BY chat_room_id)
ORDER BY po.chat_room_id ASC;
