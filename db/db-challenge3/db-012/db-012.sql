BEGIN;

UPDATE chat_rooms
SET is_enabled_file_sent = 0, updated_user_id = 1, updated_at = NOW()
WHERE id IN 
    ( /*chat_room_id全体から、副問合せbで抽出したchat_room_idを取り除く副問合せa*/
        SELECT DISTINCT chat_room_id
        FROM participants
        WHERE chat_room_id NOT IN 
            ( /*user_idが1のchat_room_idを抽出する副問合せb*/
                SELECT chat_room_id 
                FROM participants 
                WHERE user_id = 1
            )
    )
    AND is_deleted = 0;

COMMIT;
