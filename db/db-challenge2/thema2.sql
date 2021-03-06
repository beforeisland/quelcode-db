CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    mail VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    introduction VARCHAR(1000),
    work_phone_number VARCHAR(13),
    mobile_phone_number VARCHAR(13),
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

CREATE TABLE chat_rooms (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    chat_name VARCHAR(100) NOT NULL,
    overview VARCHAR(1000),
    is_enabled_file_sent TINYINT(1) DEFAULT 1 NOT NULL,
    is_enabled_direct_chat TINYINT(1) DEFAULT 0 NOT NULL,
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    created_user_id INT NOT NULL REFERENCES users(id),
    updated_user_id INT NOT NULL REFERENCES users(id),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

CREATE TABLE participants (
    user_id INT NOT NULL REFERENCES users(id),
    chat_room_id INT NOT NULL REFERENCES chat_rooms(id),
    joined_at DATETIME NOT NULL,
    PRIMARY KEY(user_id, chat_room_id)
);

CREATE TABLE posts (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(1000) NOT NULL,
    attachment_file_name VARCHAR(100),
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    chat_room_id INT NOT NULL REFERENCES chat_rooms(id),
    posted_user_id INT NOT NULL REFERENCES users(id),
    updated_user_id INT NOT NULL REFERENCES users(id),
    posted_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

CREATE TABLE tasks (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(1000) NOT NULL,
    assingned_user_id INT NOT NULL REFERENCES users(id),
    deadline DATETIME,
    is_done TINYINT(1) DEFAULT 0 NOT NULL,
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    chat_room_id INT NOT NULL REFERENCES chat_rooms(id),
    created_user_id INT NOT NULL REFERENCES users(id),
    updated_user_id INT NOT NULL REFERENCES users(id),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);
