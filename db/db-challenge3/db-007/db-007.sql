SELECT id, chat_name, overview, 
    CASE is_enabled_file_sent WHEN 1 THEN '許可' WHEN 0 THEN '禁止' END AS 'ファイル送信可否',
    is_enabled_direct_chat, is_deleted, created_user_id, updated_user_id, created_at, updated_at
FROM chat_rooms
WHERE is_deleted = 0
    AND overview LIKE '%ダイレクトチャット'
ORDER BY id ASC;
