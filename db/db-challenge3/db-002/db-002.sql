INSERT INTO chat_rooms
        (chat_name, overview, created_user_id, created_at, updated_user_id, updated_at)
VALUES  ('りんご', '利用者の集まり', 1, '2020/04/21 11:26:32', 1, '2020/04/21 11:26:32'),
        ('ごりら', 'sqlの集まり', 2, '2020/04/23 15:42:05', 2, '2020/04/23 15:42:05'),
        ('らっぱ', '言語の集まり', 8, '2020/04/24 11:03:16', 9,	'2020/04/25 10:33:55'),
        ('ぱんだ', 'フレームワークの集まり', 5, '2020/04/23 18:14:28', 7, '2020/04/24 20:33:06'),
        ('ごま', 'adminとmysqlのダイレクトチャット', 1, '2020/04/23 14:34:58', 1, '2020/04/23 14:34:58'),
        ('まり', 'adminとsqlserverのダイレクトチャット', 1, '2020/04/23 14:45:22', 1, '2020/04/23 14:45:22'),
        ('りす', 'adminとjsのダイレクトチャット', 1, '2020/04/24 10:55:21', 1, '2020/04/24 10:55:21'),
        ('かめ', 'adminとamazonのダイレクトチャット', 1, '2020/04/24 11:02:20', 1, '2020/04/27 15:41:33');

UPDATE chat_rooms SET is_enabled_file_sent = 0
WHERE id IN (4, 6);

UPDATE chat_rooms SET is_enabled_direct_chat = 1
WHERE id IN (5, 6, 7, 8);

UPDATE chat_rooms SET is_deleted = 1
WHERE id = 8;
