-- User Table
CREATE TABLE user_tb
(
    id                INT PRIMARY KEY,
    username          VARCHAR(250) NOT NULL,
    nickname          VARCHAR(250),
    password          VARCHAR(250) NOT NULL,
    user_email        VARCHAR(255),
    user_address      VARCHAR(255),
    user_phone_number VARCHAR(20)  NOT NULL,
    user_pic_url      VARCHAR,
    user_division     VARCHAR,
    company_name      VARCHAR,
    account_number    VARCHAR,
    account_name      VARCHAR,
    created_at        TIMESTAMP,
    bank_id           INT
);



