CREATE TABLE user_tb (
    id INT auto_increment PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

