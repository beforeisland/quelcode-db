INSERT INTO posts
        (chat_room_id, content, attachment_file_name, is_deleted, posted_at, posted_user_id, updated_at, updated_user_id)
VALUES  (1, 'このチャットの注意事項を添付しました。確認してください。', '注意事項.pdf', 0, '2020/04/21 13:11:55', 1, '2020/04/21 13:11:55', 1),
        (1, '確認しました', NULL, 0, '2020/04/22 16:10:11', 2, '2020/04/22 16:10:11', 2),
        (1, '確認しました！', NULL, 0, '2020/04/22 17:45:29', 3, '2020/04/22 17:45:29', 3),
        (1, '確認しました。', NULL, 0, '2020/04/22 18:50:11', 4, '2020/04/22 18:50:11', 4),
        (2, 'sqlに関する情報を集めるチャットです！よろしくお願いします！', 'sql.png', 0, '2020/04/24 13:41:40', 2, '2020/04/24 13:41:40', 2),
        (2, 'よおｒしくおねがいします！', NULL, 1, '2020/04/24 13:42:03', 3, '2020/04/24 13:42:42', 3),
        (2, 'よろしくお願いします！', NULL, 0, '2020/04/24 13:44:03', 3, '2020/04/24 13:44:03', 3),
        (3, 'プログラミング言語に関するチャットです！', 'プログラミング.gif', 0, '2020/04/25 08:06:49', 10, '2020/04/25 08:06:49', 10),
        (3, 'よろしくお願いします！', NULL, 0, '2020/04/25 15:42:22', 8, '2020/04/25 15:42:22', 8),
        (3, 'よろしく！', NULL, 0, '2020/04/25 19:51:10', 9, '2020/04/25 19:51:10', 9),
        (4, 'test', NULL, 0, '2020/04/25 21:15:26', 5, '2020/04/25 21:15:26', 5),
        (4, '見れました！', NULL, 0, '2020/04/26 00:12:43', 7, '2020/04/26 00:12:43', 7),
        (5, 'test', NULL, 0, '2020/04/26 10:12:58', 1, '2020/04/26 10:12:58', 1),
        (6, 'test', NULL, 0, '2020/04/26 11:21:44', 1, '2020/04/26 11:21:44', 1),
        (6, 'miremasita', NULL, 1, '2020/04/26 14:21:32', 3, '2020/04/26 14:22:45', 3),
        (7, 'test', NULL, 0, '2020/04/26 16:22:50', 1, '2020/04/26 16:22:50', 1),
        (7, 'sss', NULL, 1, '2020/04/26 17:11:23', 10, '2020/04/26 18:09:37', 10);
