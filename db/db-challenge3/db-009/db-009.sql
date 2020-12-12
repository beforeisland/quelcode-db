SELECT COUNT(po.chat_room_id) AS '投稿数', c.chat_name AS 'チャットルーム名'
FROM posts AS po
JOIN users AS u
    ON po.posted_user_id = u.id
JOIN chat_rooms AS c
    ON po.chat_room_id = c.id
WHERE u.is_deleted = 0 AND po.is_deleted = 0
GROUP BY po.chat_room_id;
ORDER BY COUNT(po.chat_room_id) DESC;
