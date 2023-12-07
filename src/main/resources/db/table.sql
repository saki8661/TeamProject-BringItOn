

CREATE TABLE users_tb
(
    user_id           INT AUTO_INCREMENT PRIMARY KEY,
    username          VARCHAR(250) NOT NULL,
    password          VARCHAR(250) NOT NULL,
    user_email        VARCHAR(255),
    user_address      VARCHAR(255),
    user_phone_number VARCHAR(20) NOT NULL,
    is_admin          BOOLEAN NOT NULL DEFAULT false
);