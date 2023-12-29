CREATE TABLE user_tb
(
    id                INT AUTO_INCREMENT PRIMARY KEY,
    username          VARCHAR(250) NOT NULL,
    nickname          VARCHAR(250),
    password          VARCHAR(250) NOT NULL,
    user_email        VARCHAR(255),
    user_address      VARCHAR(255),
    user_phone_number VARCHAR(20)  NOT NULL,
    user_pic_url      VARCHAR,
    user_division     VARCHAR,
    account_number    VARCHAR,
    account_name      VARCHAR,
    created_at        TIMESTAMP,
    bank_id           INT,
    team_id           INT,
    gender_id         INT,
    age_id            INT,
    kakao_login       BOOLEAN,
    is_captain        BOOLEAN
);

-- 팀 테이블
CREATE TABLE team_tb
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    team_name      VARCHAR(250) NOT NULL,
    team_capacity  INT,
    team_location  VARCHAR,
    team_pic_url   VARCHAR,
    team_introduce VARCHAR(250),
    level          VARCHAR,
    age_id         INT,
    gender_id      INT,
    position_id    INT,
    sport_id       INT,
    created_at     TIMESTAMP
);


-- 공간 테이블
CREATE TABLE space_tb
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    space_name     VARCHAR(255),
    description    TEXT,
    capacity       INT,
    price INT,
    biz_start_time VARCHAR(255),
    biz_end_time   VARCHAR(255),
    space_location VARCHAR(255),
    space_phone_Number VARCHAR(20),
    sector         VARCHAR,
    is_inside      BOOLEAN,
    created_at     TIMESTAMP,
    user_id        INT,
    sport_id       INT
);

-- 공간 사진
CREATE TABLE space_pic_tb
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    space_pic VARCHAR(255),
    space_id  INT
);

-- 성별 테이블
CREATE TABLE gender_tb
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    gender VARCHAR
);

-- 나이 테이블
CREATE TABLE age_tb
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    age VARCHAR
);

-- 포지션 테이블
CREATE TABLE position_tb
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    position VARCHAR
);


-- 예약 시간
CREATE TABLE reservation_time_tb
(
    id                 INT AUTO_INCREMENT PRIMARY KEY,
    start_time         TIME,
    end_time           TIME
);



-- 시설 공간 예약 테이블
CREATE TABLE reservation_tb
(
    id                 INT AUTO_INCREMENT PRIMARY KEY,
    reservation_number VARCHAR(25),
    reservation_date   DATE,
    personnel          INT,
    status             VARCHAR(50),
    to_host            VARCHAR(255),
    matching           BOOLEAN,
    created_at         TIMESTAMP,
    user_id            INT,
    space_id           INT,
    reservation_time_id INT
);



-- 지역 테이블 (코드)
CREATE TABLE region_tb
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR
);

-- 운동 종목 테이블 (코드)
CREATE TABLE sport_tb
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    sport_name VARCHAR(50)
);

-- 한줄리뷰 내역
CREATE TABLE review_tb
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    rating     INT,
    comment    TEXT,
    space_id   INT,
    user_id    INT,
    created_at TIMESTAMP
);

-- 매칭 테이블
CREATE TABLE matching_tb
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    user_id         INT,
    reservation_id  INT,
    match_user_id   INT,
    matching_status VARCHAR
);

-- 옵션 테이블 (해야함)
CREATE TABLE option_tb
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    option_name VARCHAR(255)
);

-- 선택 옵션 테이블 (해야함)
CREATE TABLE space_option_tb
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    option_id INT,
    space_id  INT
);

-- 주최 테이블 (보류)
CREATE TABLE sponsor_tb
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    sponsor_name VARCHAR(250) NOT NULL
);

-- 북마크 기능 테이블
CREATE TABLE bookmark_tb
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    space_id INT,
    user_id  INT
);

-- 공간대여 상세보기 문의 테이블
CREATE TABLE space_inquire_tb
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    inquire_type    VARCHAR(50),
    inquire_content VARCHAR(255),
    inquire_answer  VARCHAR(255),
    created_at      TIMESTAMP,
    user_id         INT,
    space_id        INT
);

-- 은행 이름 테
-- 이블 (코드 테이블) - 결재 하면서 새로 구상
CREATE TABLE bank_tb
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    bank_name VARCHAR(255)
);

-- 결제내역 테이블
CREATE TABLE payment_tb
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    amount         INT,
    payment_number VARCHAR,
    is_charge      BOOLEAN,
    created_at     TIMESTAMP,
    user_id        INT
);

-- 포인트 내역
CREATE TABLE point_tb
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    my_point   INT,
    created_at Timestamp,
    user_id    INT
);

-- 포인트 내역 테이블
CREATE TABLE point_history_tb
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    point_amount INT,
    charge_point INT,
    use_point    INT,
    refund       BOOLEAN,
    refund_date  DATE,
    created_at   DATE,
    user_id      INT
);


CREATE TABLE notice_category_tb
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    notice_category VARCHAR(255)
);

-- 공지사항 테이블
CREATE TABLE notice_tb
(
    id                 INT AUTO_INCREMENT PRIMARY KEY,
    notice_category_id INT,
    notice_title       VARCHAR(255),
    notice_content     TEXT,
    user_id             INT,
    created_at         TIMESTAMP
);


CREATE TABLE inquire_category_tb
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    inquire_category VARCHAR(255)
);

-- 문의 테이블
CREATE TABLE inquire_tb
(
    id                  INT AUTO_INCREMENT PRIMARY KEY,
    inquire_title       VARCHAR(255),
    inquire_content     VARCHAR,
    created_at          TIMESTAMP,
    inquire_category_id INT,
    user_id             INT
);
-- 답변 테이블
CREATE TABLE answer_tb
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    inquire_id     INT,
    answer_content VARCHAR(255),
    created_at     TIMESTAMP
);

-- 결과 테이블
CREATE TABLE result_tb
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    result_name VARCHAR
);

-- 결과 관계 테이블
CREATE TABLE has_result_tb
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    result_id INT,
    league_id INT
);

-- 리그 일정 테이블 (3차 기능)
CREATE TABLE league_match_tb
(
    id                INT AUTO_INCREMENT PRIMARY KEY,
    league_id         INT,
    league_match_date DATE,
    league_match_time TIME,
    home_team_id      INT,
    away_team_id      INT,
    score_home_team   INT,
    score_away_team   INT,
    winner_id         INT
);

-- 경기 기록 - 3차
CREATE TABLE record_tb
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    team_id         INT,
    league_id       INT,
    rank            INT NOT NULL,
    get_goal        INT NOT NULL,
    lose_goal       INT,
    goal_difference INT NOT NULL
);

-- 리그 테이블 (관리자 등록한 리그 정보 관리) - 3차
CREATE TABLE league_tb
(
    id                 INT AUTO_INCREMENT PRIMARY KEY,
    league_name        VARCHAR(255) NOT NULL,
    apply_start        DATE,
    apply_end          DATE,
    competition_start  DATE,
    competition_end    DATE,
    location_id        INT,
    sponsor_id         VARCHAR(255),
    recruitment        INT,
    recruitment_status VARCHAR(255)
);

-- 리그 등록
CREATE TABLE campaign_tb
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    campaign_pic   VARCHAR(255),
    campaign_name  VARCHAR(255),
    campaign_start DATE,
    campaign_end   DATE,
    region_id      INT
);

CREATE TABLE board_tb
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    board_title   VARCHAR(50),
    board_content TEXT,
    created_at    DATE,
    user_id       INT
);

CREATE TABLE reply_tb
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    comment    VARCHAR(255),
    created_at TIMESTAMP,
    user_id    INT,
    board_id   INT
);

CREATE TABLE product_category_tb
(
    id                    INT AUTO_INCREMENT PRIMARY KEY,
    product_category_name VARCHAR(255)
);

CREATE TABLE product_tb
(
    id                  INT AUTO_INCREMENT PRIMARY KEY,
    product_name        VARCHAR(255),
    product_pic         VARCHAR(255),
    product_price       INT,
    product_category_id INT,
    created_at          TIMESTAMP
);

CREATE TABLE cart_tb
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    quantity         INT,
    product_id       INT,
    user_id          INT,
    cart_total_price INT,
    created_at       TIMESTAMP
);

CREATE TABLE order_tb
(
    id                INT AUTO_INCREMENT PRIMARY KEY,
    quantity          INT,
    product_id        INT,
    user_id           INT,
    order_total_price INT,
    created_at        TIMESTAMP
);

CREATE TABLE captain_tb
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    team_id INT
);

CREATE TABLE apply_tb
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    team_id          INT,
    captain_user_id  INT,
    personal_user_id INT
);

