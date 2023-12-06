-- 'banks' 테이블 생성
CREATE TABLE banks
(
    bank_id   INT AUTO_INCREMENT PRIMARY KEY,
    bank_name VARCHAR(255)
);

-- 'in_out' 테이블 생성
CREATE TABLE in_out
(
    in_out_id   INT AUTO_INCREMENT PRIMARY KEY,
    in_out_name VARCHAR(50)
);

-- 'sports' 테이블 생성
CREATE TABLE sports
(
    sport_id   INT AUTO_INCREMENT PRIMARY KEY,
    sport_name VARCHAR(50),
    in_out_id  INT,
    FOREIGN KEY (in_out_id) REFERENCES in_out (in_out_id)
);

-- 'regions' 테이블 생성
CREATE TABLE regions
(
    region_id   INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(250) NOT NULL
);

-- 'locations' 테이블 생성
CREATE TABLE locations
(
    location_id   INT AUTO_INCREMENT PRIMARY KEY,
    region_id     INT,
    location_name VARCHAR(250) NOT NULL,
    FOREIGN KEY (region_id) REFERENCES regions (region_id)
);

-- 'areas' 테이블 생성
CREATE TABLE areas
(
    area_id     INT AUTO_INCREMENT PRIMARY KEY,
    location_id INT,
    area_name   VARCHAR(250) NOT NULL,
    FOREIGN KEY (location_id) REFERENCES locations (location_id)
);

-- 'teams' 테이블 생성
CREATE TABLE teams
(
    team_id   INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(250) NOT NULL
);

-- 'sponsors' 테이블 생성
CREATE TABLE sponsors
(
    sponsor_id   INT AUTO_INCREMENT PRIMARY KEY,
    sponsor_name VARCHAR(250) NOT NULL
);

-- 'leagues' 테이블 생성
CREATE TABLE leagues
(
    league_id          INT AUTO_INCREMENT PRIMARY KEY,
    league_name        VARCHAR(255) NOT NULL,
    league_pic         VARCHAR(255),
    apply_start        DATE,
    apply_end          DATE,
    competition_start  DATE,
    competition_end    DATE,
    region_id          INT,
    sponsor_id         VARCHAR(255),
    recruitment        INT,
    recruitment_status VARCHAR(255),
    FOREIGN KEY (region_id) REFERENCES regions (region_id),
    FOREIGN KEY (sponsor_id) REFERENCES sponsors (sponsor_id)
);

-- 'standings' 테이블 생성
CREATE TABLE standings
(
    standing_id     INT AUTO_INCREMENT PRIMARY KEY,
    team_id         INT,
    league_id       INT,
    rank            INT NOT NULL,
    points          INT NOT NULL,
    goal_difference INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES teams (team_id),
    FOREIGN KEY (league_id) REFERENCES leagues (league_id)
);

-- 'options' 테이블 생성
CREATE TABLE options
(
    option_id   INT AUTO_INCREMENT PRIMARY KEY,
    option_name VARCHAR(255)
);

-- 'selected_options' 테이블 생성
CREATE TABLE selected_options
(
    selected_option_id INT AUTO_INCREMENT PRIMARY KEY,
    option_id          INT,
    space_id           INT,
    FOREIGN KEY (option_id) REFERENCES options (option_id),
    FOREIGN KEY (space_id) REFERENCES spaces (space_id)

);

-- 'spaces' 테이블 생성
CREATE TABLE spaces
(
    space_id       INT AUTO_INCREMENT PRIMARY KEY,
    user_id        INT,
    spaces_name    VARCHAR(255),
    region_id      INT,
    location_id    INT,
    area_id        INT,
    description    TEXT,
    space_pic      VARCHAR(255),
    biz_start_time TIME,
    biz_end_time   TIME,
    bank_id        INT,
    account_number VARCHAR(50),
    account_holder VARCHAR(50),
    capacity       INT,
    in_out_id      INT,
    price_per_hour INT,
    FOREIGN KEY (region_id) REFERENCES regions (region_id),
    FOREIGN KEY (location_id) REFERENCES locations (location_id),
    FOREIGN KEY (area_id) REFERENCES areas (area_id),
    FOREIGN KEY (in_out_id) REFERENCES in_out (in_out_id),
    FOREIGN KEY (bank_id) REFERENCES banks (bank_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- 'users' 테이블 생성
CREATE TABLE users
(
    user_id           INT AUTO_INCREMENT PRIMARY KEY,
    team_id           INT,
    username          VARCHAR(250) NOT NULL,
    password          VARCHAR(250) NOT NULL,
    user_email        VARCHAR(255),
    user_address      VARCHAR(255),
    user_phone_number VARCHAR(20)  NOT NULL,
    host              BOOLEAN,
    FOREIGN KEY (team_id) REFERENCES teams (team_id),
);

-- 'bookmarks' 테이블 생성
CREATE TABLE bookmarks
(
    bookmark_id INT AUTO_INCREMENT PRIMARY KEY,
    space_id    INT,
    user_id     INT,
    FOREIGN KEY (space_id) REFERENCES spaces (space_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- 'reservations' 테이블 생성
CREATE TABLE reservations
(
    reservation_id   INT AUTO_INCREMENT PRIMARY KEY,
    space_id         INT,
    user_id          INT,
    reservation_date DATE,
    start_time       TIME,
    end_time         TIME,
    status           VARCHAR(50),
    matching         BOOLEAN,
    FOREIGN KEY (space_id) REFERENCES spaces (space_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- 'reviews' 테이블 생성
CREATE TABLE reviews
(
    review_id      INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT,
    user_id        INT,
    comment        TEXT,
    FOREIGN KEY (reservation_id) REFERENCES reservations (reservation_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- 'matchings' 테이블 생성
CREATE TABLE matchings
(
    matching_id     INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id  INT,
    match_user_id   INT,
    matching_status VARCHAR(255),
    FOREIGN KEY (reservation_id) REFERENCES reservations (reservation_id)
);

-- 'charges' 테이블 생성
CREATE TABLE charges
(
    charge_id     INT AUTO_INCREMENT PRIMARY KEY,
    charge_amount INT
);

-- 'payments' 테이블 생성
CREATE TABLE payments
(
    payment_id  INT AUTO_INCREMENT PRIMARY KEY,
    charge_id   INT,
    price       INT,
    created_at  TIME,
    refund      BOOLEAN,
    refund_date DATE,
    user_id     INT,
    FOREIGN KEY (charge_id) REFERENCES charges (charge_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- 'scores' 테이블 생성
CREATE TABLE scores
(
    score_id        INT AUTO_INCREMENT PRIMARY KEY,
    team_id         INT,
    league_id       INT,
    total_points    INT,
    total_wins      INT,
    total_losses    INT,
    total_draws     INT,
    goal_difference varchar(20),
    FOREIGN KEY (team_id) REFERENCES teams (team_id),
    FOREIGN KEY (league_id) REFERENCES leagues (league_id)
);

-- 'notices' 테이블 생성
CREATE TABLE notices
(
    notice_id      INT AUTO_INCREMENT PRIMARY KEY,
    notice_title   VARCHAR(255),
    notice_content TEXT,
    created_at     DATE
);

-- 'inquires' 테이블 생성
CREATE TABLE inquires
(
    inquire_id      INT AUTO_INCREMENT PRIMARY KEY,
    inquire_title   VARCHAR(255),
    inquire_content TEXT,
    user_id         INT,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- 'answers' 테이블 생성
CREATE TABLE answers
(
    answer_id      INT AUTO_INCREMENT PRIMARY KEY,
    inquire_id     INT,
    answer_content VARCHAR(255),
    FOREIGN KEY (inquire_id) REFERENCES inquires (inquire_id)
);

-- 'league_matches' 테이블 생성
CREATE TABLE league_matches
(
    league_match_id   INT AUTO_INCREMENT PRIMARY KEY,
    league_id         INT,
    league_match_date DATE,
    league_match_time TIME,
    home_team_id      INT,
    away_team_id      INT,
    score_home_team   INT,
    score_away_team   INT,
    winner_id         INT,
    FOREIGN KEY (league_id) REFERENCES leagues (league_id),
    FOREIGN KEY (home_team_id) REFERENCES teams (team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams (team_id),
    FOREIGN KEY (winner_id) REFERENCES teams (team_id)
);



