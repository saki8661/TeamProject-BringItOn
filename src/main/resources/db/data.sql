-- user_tb
INSERT INTO user_tb (username, nickname, password, user_email, user_address, user_phone_number, user_pic_url,
                     user_division, account_number, account_name, created_at, bank_id, team_id, gender_id, age_id,
                     kakao_login)

VALUES ('ssar', '대욱', 'password1', 'bbarkse1129@naver.com', '서울시 강남구', '010-1111-1111', 'default_profile.jpg', 'host',
        '123456789', '나의 계좌1', NOW(), 1, 1, 1, 2, false),
       ('cos', '세환', 'password', 'cos@nate.com', '서울시 마포구', '010-2222-2222', 'default_profile.jpg', 'general',
        '234567891', '나의 계좌2', NOW(), 2, 2, 1, 3, false),
       ('love', '언약', 'password', '0106u@naver.com', '서울시 남구', '010-3333-3333', 'default_profile.jpg', 'general',
        '345678912', '나의 계좌3', NOW(), 1, 3, 1, 2, false),
       ('peace', '채빈', 'password', 'peace@nate.com', '서울시 강남구', '010-4444-4444', 'default_profile.jpg', 'host',
        '456789123', '나의 계좌4', NOW(), 3, 4, 2, 2, false),
       ('ssar1', '길동', 'password', 'ssar1@nate.com', '서울시 강남구', '010-5555-5555', 'default_profile.jpg', 'general',
        '567891234', '나의 계좌5', NOW(), 1, 5, 1, 5, false),
       ('ssar2', '보고', 'password', 'ssar2@nate.com', '서울시 강남구', '010-6666-6666', 'default_profile.jpg', 'general',
        '67891234', '나의 계좌6', NOW(), 1, 6, 1, 5, false),
       ('ssar3', '꺽정', 'password', 'ssar3@nate.com', '서울시 강남구', '010-7777-7777', 'default_profile.jpg', 'general',
        '789123456', '나의 계좌7', NOW(), 1, 7, 1, 5, false),
       ('ssar4', '허준', 'password', 'ssar@nate.com', '서울시 강남구', '010-8888-8888', 'default_profile.jpg', 'general',
        '891234567', '나의 계좌8', NOW(), 1, 8, 1, 2, false),
       ('ssa5', '민수', 'password', 'ssar@nate.com', '서울시 강남구', '010-9999-9999', 'default_profile.jpg', 'general',
        '912345678', '나의 계좌9', NOW(), 1, 9, 1, 1, false),
       ('ssar6', '영희', 'password', 'ssar@nate.com', '서울시 강남구', '010-1010-1010', 'default_profile.jpg', 'general',
        '109876543', '나의 계좌10', NOW(), 1, 10, 2, 1, false),
       ('bbarkse', '관리자', 'password', 'ssar@nate.com', '서울시 강남구', '010-1010-1010', 'default_profile.jpg', 'admin',
        '109876543', '나의 계좌10', NOW(), 1, 11, 1, 4, false);

-- 팀 더미 데이터
INSERT INTO team_tb (team_name, team_capacity, team_pic_url, team_introduce, level, region_id, sport_id)
VALUES ('축구Team 1', '10', 'psg.jpg', '즐거운 축구팀', '상', 1, 1),
       ('축구Team 2', '10', 'psg.jpg', '행복한 축구팀', '중', 2, 1),
       ('축구Team 3', '10', 'psg.jpg', '밝은 축구팀', '상', 1, 1),
       ('축구Team 4', '10', 'psg.jpg', '기운넘치는 축구팀', '하', 1, 1),
       ('축구Team 5', '10', 'psg.jpg', '폼미친 축구팀', '중', 2, 1),
       ('축구Team 6', '10', 'psg.jpg', '예능 축구팀', '증', 3, 1),
       ('축구Team 7', '10', 'psg.jpg', '초보자 축구팀', '하', 1, 1),
       ('축구Team 8', '10', 'psg.jpg', '초보탈출 축구팀', '하', 1, 1),
       ('축구Team 9', '10', 'psg.jpg', '세모발 축구팀', '하', 1, 1),
       ('축구Team 10', '10', 'psg.jpg', '능력자 축구팀', '상', 2, 1);

-- 지역 더미 데이터
INSERT INTO region_tb (region_name)
VALUES ('서울'),
       ('경기'),
       ('인천'),
       ('충청도'),
       ('전라도'),
       ('경상도'),
       ('강원도'),
       ('제주도');

-- 지역 더미 데이터
INSERT INTO gender_tb (gender)
VALUES ('남자'),
       ('여자');


-- 지역 더미 데이터
INSERT INTO age_tb (age)
VALUES ('10대'),
       ('20대'),
       ('30대'),
       ('40대'),
       ('50대');

-- 운동 종목 더미 데이터
INSERT INTO sport_tb (sport_name)
VALUES ('Soccer'),
       ('Basketball'),
       ('Futsal');

-- 옵션 더미 데이터
INSERT INTO option_tb (option_name)
VALUES ('화장실'),
       ('샤워실'),
       ('주차장'),
       ('장비대여'),
       ('락커'),
       ('와이파이');

-- 은행 이름 더미 데이터
INSERT INTO bank_tb (bank_name)
VALUES ('국민'),
       ('기업'),
       ('하나'),
       ('농협'),
       ('수협'),
       ('축협'),
       ('카카오'),
       ('토스');


-- 공간 더미 데이터
INSERT INTO space_tb (space_name, description, capacity, price_per_hour, biz_start_time, biz_end_time, space_location,
                      sector, is_inside, region_id, created_at, user_id, sport_id)
VALUES ('실내축구공간1', '실내축구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 1', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간2', '실내축구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 2', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간3', '실내축구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 3', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간4', '실내축구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 4', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간5', '실내축구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 5', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간6', '실내축구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 6', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간7', '실내축구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 7', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간8', '실내축구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 8', true, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실내축구공간9', '실내축구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 9', true, 1,
        CURRENT_TIMESTAMP, 1, 1),

       ('실외축구공간1', '실외축구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 1', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간2', '실외축구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 2', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간3', '실외축구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 3', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간4', '실외축구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 4', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간5', '실외축구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 5', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간6', '실외축구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 6', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간7', '실외축구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 7', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간8', '실외축구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 8', false, 1,
        CURRENT_TIMESTAMP, 1, 1),
       ('실외축구공간9', '실외축구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'Sector 9', false, 1,
        CURRENT_TIMESTAMP, 1, 1),

       ('경기실내축구공간1', '실내축구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '경기도 평택시', 'Area 1', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간2', '실내축구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '경기도 평택시', 'Area 2', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간3', '실내축구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '경기도 평택시', 'Area 3', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간4', '실내축구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '경기도 평택시', 'Area 4', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간5', '실내축구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 5', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간6', '실내축구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 6', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간7', '실내축구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 7', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간8', '실내축구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 8', true, 2, CURRENT_TIMESTAMP,
        4, 1),
       ('경기실내축구공간9', '실내축구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 9', true, 2, CURRENT_TIMESTAMP,
        4, 1),

       ('경기실외축구공간1', '경기실외축구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '경기도 평택시', 'Area 1', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간2', '경기실외축구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '경기도 평택시', 'Area 2', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간3', '경기실외축구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '경기도 평택시', 'Area 3', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간4', '경기실외축구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '경기도 평택시', 'Area 4', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간5', '경기실외축구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 5', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간6', '경기실외축구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 6', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간7', '경기실외축구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 7', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간8', '경기실외축구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 8', false, 2,
        CURRENT_TIMESTAMP, 4, 1),
       ('경기실외축구공간9', '경기실외축구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Area 9', false, 2,
        CURRENT_TIMESTAMP, 4, 1),

--농구
       ('실내농구공간1', '실내농구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 1', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간2', '실내농구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 2', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간3', '실내농구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 3', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간4', '실내농구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 4', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간5', '실내농구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 5', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간6', '실내농구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 6', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간7', '실내농구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 7', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간8', '실내농구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 8', true, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실내농구공간9', '실내농구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'I-Zone 9', true, 1,
        CURRENT_TIMESTAMP, 1, 2),

       ('실외농구공간1', '실외농구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 1', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간2', '실외농구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 2', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간3', '실외농구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 3', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간4', '실외농구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 4', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간5', '실외농구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 5', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간6', '실외농구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 6', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간7', '실외농구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 7', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간8', '실외농구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 8', false, 1,
        CURRENT_TIMESTAMP, 1, 2),
       ('실외농구공간9', '실외농구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', 'O-Zone 9', false, 1,
        CURRENT_TIMESTAMP, 1, 2),

       ('경기실내농구공간1', '실내농구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '경기도 평택시', 'a1', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간2', '실내농구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '경기도 평택시', 'a2', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간3', '실내농구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '경기도 평택시', 'a3', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간4', '실내농구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '경기도 평택시', 'a4', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간5', '실내농구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'a5', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간6', '실내농구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'a6', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간7', '실내농구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'a7', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간8', '실내농구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'a8', true, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실내농구공간9', '실내농구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'a9', true, 2, CURRENT_TIMESTAMP,
        4, 2),

       ('경기실외농구공간1', '경기실외농구공간1 이용해보세요', '10', '10000', '09:00', '23:00', '경기도 평택시', 'b1', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간2', '경기실외농구공간2 이용해보세요', '12', '12000', '09:00', '23:00', '경기도 평택시', 'b2', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간3', '경기실외농구공간3 이용해보세요', '14', '14000', '09:00', '23:00', '경기도 평택시', 'b3', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간4', '경기실외농구공간4 이용해보세요', '20', '20000', '09:00', '23:00', '경기도 평택시', 'b4', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간5', '경기실외농구공간5 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'b5', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간6', '경기실외농구공간6 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'b6', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간7', '경기실외농구공간7 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'b7', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간8', '경기실외농구공간8 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'b8', false, 2, CURRENT_TIMESTAMP,
        4, 2),
       ('경기실외농구공간9', '경기실외농구공간9 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'b9', false, 2, CURRENT_TIMESTAMP,
        4, 2),

--풋살
       ('실내풋살장1', '실내풋살장1 이용해보세요', '10', '10000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 1', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장2', '실내풋살장2 이용해보세요', '12', '12000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 2', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장3', '실내풋살장3 이용해보세요', '14', '14000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 3', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장4', '실내풋살장4 이용해보세요', '20', '20000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 4', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장5', '실내풋살장5 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 5', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장6', '실내풋살장6 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 6', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장7', '실내풋살장7 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 7', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장8', '실내풋살장8 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 8', true, 1, CURRENT_TIMESTAMP,
        1, 3),
       ('실내풋살장9', '실내풋살장9 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[In] 9', true, 1, CURRENT_TIMESTAMP,
        1, 3),

       ('실외풋살장1', '실외풋살장1 이용해보세요', '10', '10000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 1', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장2', '실외풋살장2 이용해보세요', '12', '12000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 2', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장3', '실외풋살장3 이용해보세요', '14', '14000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 3', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장4', '실외풋살장4 이용해보세요', '20', '20000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 4', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장5', '실외풋살장5 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 5', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장6', '실외풋살장6 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 6', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장7', '실외풋살장7 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 7', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장8', '실외풋살장8 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 8', false, 1,
        CURRENT_TIMESTAMP, 1, 3),
       ('실외풋살장9', '실외풋살장9 이용해보세요', '16', '16000', '09:00', '23:00', '서울 마포구 공덕동', '[Out] 9', false, 1,
        CURRENT_TIMESTAMP, 1, 3),

       ('경기실내Futsal1', '실내Futsal1 이용해보세요', '10', '10000', '09:00', '23:00', '경기도 평택시', 'Free1', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal2', '실내Futsal2 이용해보세요', '12', '12000', '09:00', '23:00', '경기도 평택시', 'Free2', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal3', '실내Futsal3 이용해보세요', '14', '14000', '09:00', '23:00', '경기도 평택시', 'Free3', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal4', '실내Futsal4 이용해보세요', '20', '20000', '09:00', '23:00', '경기도 평택시', 'Free4', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal5', '실내Futsal5 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Free5', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal6', '실내Futsal6 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Free6', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal7', '실내Futsal7 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Free7', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal8', '실내Futsal8 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Free8', true, 2,
        CURRENT_TIMESTAMP, 4, 3),
       ('경기실내Futsal9', '실내Futsal9 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'Free9', true, 2,
        CURRENT_TIMESTAMP, 4, 3),

       ('경기실외Futsal1', '경기실외Futsal1 이용해보세요', '10', '10000', '09:00', '23:00', '경기도 평택시', 'NoLimit1', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal2', '경기실외Futsal2 이용해보세요', '12', '12000', '09:00', '23:00', '경기도 평택시', 'NoLimit2', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal3', '경기실외Futsal3 이용해보세요', '14', '14000', '09:00', '23:00', '경기도 평택시', 'NoLimit3', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal4', '경기실외Futsal4 이용해보세요', '20', '20000', '09:00', '23:00', '경기도 평택시', 'NoLimit4', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal5', '경기실외Futsal5 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'NoLimit5', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal6', '경기실외Futsal6 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'NoLimit6', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal7', '경기실외Futsal7 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'NoLimit7', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal8', '경기실외Futsal8 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'NoLimit8', false, 2,
        CURRENT_TIMESTAMP,
        4, 3),
       ('경기실외Futsal9', '경기실외Futsal9 이용해보세요', '16', '16000', '09:00', '23:00', '경기도 평택시', 'NoLimit9', false, 2,
        CURRENT_TIMESTAMP,
        4, 3);


-- 공간 사진
INSERT INTO space_pic_tb (space_id, space_pic)
VALUES (1, 'inside1.png'),
       (2, 'inside2.png'),
       (3, 'inside3.png'),
       (4, 'inside4.png'),
       (5, 'inside5.png'),
       (6, 'inside4.png'),
       (7, 'inside3.png'),
       (8, 'inside2.png'),
       (9, 'inside1.png'),

       (10, 'outside5.png'),
       (11, 'outside4.png'),
       (12, 'outside3.png'),
       (13, 'outside2.png'),
       (14, 'outside1.png'),
       (15, 'outside2.png'),
       (16, 'outside3.png'),
       (17, 'outside4.png'),
       (18, 'outside5.png'),

       (19, 'inside1.png'),
       (20, 'inside2.png'),
       (21, 'inside3.png'),
       (22, 'inside4.png'),
       (23, 'inside5.png'),
       (24, 'inside4.png'),
       (25, 'inside3.png'),
       (26, 'inside2.png'),
       (27, 'inside1.png'),

       (28, 'outside2.png'),
       (29, 'outside3.png'),
       (30, 'outside4.png'),
       (31, 'outside1.png'),
       (32, 'outside5.png'),
       (33, 'outside4.png'),
       (34, 'outside2.png'),
       (35, 'outside3.png'),
       (36, 'outside1.png'),

       (37, 'inside2.png'),
       (38, 'inside3.png'),
       (39, 'inside4.png'),
       (40, 'inside1.png'),
       (41, 'inside5.png'),
       (42, 'inside4.png'),
       (43, 'inside2.png'),
       (44, 'inside3.png'),
       (45, 'inside1.png'),

       (46, 'outside4.png'),
       (47, 'outside5.png'),
       (48, 'outside1.png'),
       (49, 'outside3.png'),
       (50, 'outside2.png'),
       (51, 'outside5.png'),
       (52, 'outside3.png'),
       (53, 'outside1.png'),
       (54, 'outside2.png'),

       (55, 'inside1.png'),
       (56, 'inside2.png'),
       (57, 'inside3.png'),
       (58, 'inside4.png'),
       (59, 'inside5.png'),
       (60, 'inside4.png'),
       (61, 'inside3.png'),
       (62, 'inside2.png'),
       (63, 'inside1.png'),

       (64, 'outside5.png'),
       (65, 'outside4.png'),
       (66, 'outside3.png'),
       (67, 'outside2.png'),
       (68, 'outside1.png'),
       (69, 'outside2.png'),
       (70, 'outside3.png'),
       (71, 'outside4.png'),
       (72, 'outside5.png'),

       (73, 'inside1.png'),
       (74, 'inside2.png'),
       (75, 'inside3.png'),
       (76, 'inside4.png'),
       (77, 'inside5.png'),
       (78, 'inside4.png'),
       (79, 'inside3.png'),
       (80, 'inside2.png'),
       (81, 'inside1.png'),

       (82, 'outside2.png'),
       (83, 'outside3.png'),
       (84, 'outside4.png'),
       (85, 'outside1.png'),
       (86, 'outside5.png'),
       (87, 'outside4.png'),
       (88, 'outside2.png'),
       (89, 'outside3.png'),
       (90, 'outside1.png'),

       (91, 'inside2.png'),
       (92, 'inside3.png'),
       (93, 'inside4.png'),
       (94, 'inside1.png'),
       (95, 'inside5.png'),
       (96, 'inside4.png'),
       (97, 'inside2.png'),
       (98, 'inside3.png'),
       (99, 'inside1.png'),

       (100, 'outside4.png'),
       (101, 'outside5.png'),
       (102, 'outside1.png'),
       (103, 'outside3.png'),
       (104, 'outside2.png'),
       (105, 'outside5.png'),
       (106, 'outside3.png'),
       (107, 'outside1.png'),
       (108, 'outside2.png');

-- 시설 공간 예약 더미 데이터
INSERT INTO reservation_tb (reservation_number, reservation_date, personnel, start_time, end_time, to_host, status,
                            matching, created_at,
                            user_id, space_id)
VALUES (2023121801, '2024-01-01', 6, '10:00', '12:00', '장비대여 되나요?', '예약진행중', true, CURRENT_TIMESTAMP, 2, 1),
       (2023121802, '2024-01-02', 2, '14:00', '16:00', '장비대여 되나요?', '예약완료', false, CURRENT_TIMESTAMP, 3, 2),
       (2023121803, '2024-01-01', 3, '12:00', '14:00', '장비대여 되나요?', '예약완료', true, CURRENT_TIMESTAMP, 5, 5),
       (2023121804, '2024-01-02', 4, '10:00', '12:00', '장비대여 되나요?', '예약진행중', true, CURRENT_TIMESTAMP, 6, 6),
       (2023121805, '2024-01-02', 2, '18:00', '20:00', '장비대여 되나요?', '예약진행중', false, CURRENT_TIMESTAMP, 7, 7),
       (2023121806, '2024-01-01', 5, '19:00', '21:00', '장비대여 되나요?', '예약진행중', false, CURRENT_TIMESTAMP, 8, 8);


-- 한줄리뷰 더미 데이터
INSERT INTO review_tb (rating, comment, space_id, user_id, created_at)
VALUES (4, '좋아요!', 1, 2, CURRENT_TIMESTAMP),
       (5, '편해요!', 1, 3, CURRENT_TIMESTAMP),
       (4, '다음에도 이용할래요!', 1, 4, CURRENT_TIMESTAMP),
       (5, 'Nice space!', 1, 5, CURRENT_TIMESTAMP),
       (5, '상태가 좋아요!', 2, 1, CURRENT_TIMESTAMP),
       (4, '축구해요!', 2, 2, CURRENT_TIMESTAMP),
       (4, '잔디좋아!', 2, 3, CURRENT_TIMESTAMP),
       (5, '다음에 또 올래요!', 2, 5, CURRENT_TIMESTAMP);

-- 매칭 더미 데이터
INSERT INTO matching_tb (reservation_id, match_user_id, matching_status)
VALUES (1, null, '매칭대기'),
       (2, null, '매칭대기'),
       (3, 3, '매칭완료'),
       (4, 4, '매칭완료'),
       (5, 5, '매칭완료'),
       (6, 6, '매칭취소');

INSERT INTO space_option_tb (option_id, space_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (6, 1),
       (1, 2),
       (2, 2),
       (4, 2),
       (5, 2),
       (1, 3),
       (2, 3),
       (5, 3);

-- 북마크 더미 데이터
INSERT INTO bookmark_tb (space_id, user_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (1, 2),
       (2, 2),
       (3, 3);

-- 공간대여 문의 더미 데이터 ( 시설문의, 가격문의 )
INSERT INTO space_inquire_tb (inquire_type, inquire_content, inquire_answer, user_id, space_id, created_at)
VALUES ('시설문의', '근처에 주차공간 여유롭나요?', '주차는 건너편 길가에 해주세여', 1, 1, CURRENT_TIMESTAMP),
       ('가격문의', '충전 없이는 예약 불가능 하나요?', '프로그램 지침상 충전을 꼭 해주셔야 합니다', 1, 1, CURRENT_TIMESTAMP),
       ('시설문의', '근처에 맛집있나여???', '근처 대방어 맛집 있습니다', 2, 1, CURRENT_TIMESTAMP),
       ('가격문의', '6명 단체 예약인데 따로 할인은 없나요?', '죄송합니다 할인은 불가능 합니다', 6, 2, CURRENT_TIMESTAMP),
       ('시설문의', '잔디 관리 잘돼있나요?', '인조 잔디라서 불편함은 따로 없을듯여', 7, 2, CURRENT_TIMESTAMP);

-- payment_tb 테이블
INSERT INTO payment_tb (amount, payment_number, is_charge, created_at, user_id)
values ('10000', '1', TRUE, NOW(), 1),
       ('100000', '2', TRUE, NOW(), 2),
       ('30000', '3', TRUE, NOW(), 3),
       ('10000', '4', TRUE, NOW(), 4);

-- 포인트 더미 데이터
INSERT INTO point_tb (my_point, created_at, user_id)
VALUES ('10000', NOW(), 1),
       ('100000', NOW(), 2),
       ('300000', NOW(), 3),
       ('10000', NOW(), 4);

-- 포인트 sodur 데이터
INSERT INTO point_history_tb (point_amount, charge_point, use_point, refund, refund_date, created_at, user_id)
VALUES ('10000', '10000', NULL, false, NULL, '2023-12-06', 1),
       ('5000', NULL, '5000', false, NULL, '2023-11-20', 1),
       ('10000', '10000', NULL, false, NULL, '2023-11-11', 1),
       ('100000', '20000', NULL, true, '2023-12-06', '2023-11-11', 1),
       ('10000', '20000', NULL, false, NULL, '2023-11-5', 1),
       ('10000', '20000', NULL, false, NULL, '2023-10-25', 1),
       ('10000', '20000', NULL, false, NULL, '2023-10-12', 1);

-- notice_category 테이블
insert into notice_category_tb (notice_category)
values ('정기'),
       ('중요'),
       ('긴급');

-- 공지사항 더미 데이터

INSERT INTO notice_tb (notice_category_id, notice_title, notice_content, created_at)
VALUES (1, '공지1', '공지1 입니다', NOW()),
       (2, '공지2', '공지2 입니다', NOW()),
       (3, '공지3', '공지3 입니다', NOW()),
       (1, '공지4', '공지4 입니다', NOW()),
       (2, '공지5', '공지5 입니다', NOW());

-- inquire_category_tb 테이블
insert into inquire_category_tb (inquire_category)
values ('이용문의'),
       ('환불문의'),
       ('대관문의');

-- 문의 더미 데이터
INSERT INTO inquire_tb (inquire_title, inquire_content, created_at, user_id, inquire_category_id)
VALUES ('이용문의 1', '이용문의1 내용입니다', NOW(), 1, 1),
       ('환불문의 2', '환불문의2 내용입니다', NOW(), 1, 2),
       ('대관문의 3', '대관문의3 내용입니다', NOW(), 2, 3),
       ('이용문의 4', '이용문의4 내용입니다', NOW(), 2, 1),
       ('환불문의 5', '환불문의5 내용입니다', NOW(), 1, 2);

-- 답변 더미 데이터
INSERT INTO answer_tb (inquire_id, answer_content, created_at)
VALUES (1, '답변1 입니다', NOW()),
       (2, '답변2 입니다', NOW()),
       (3, '답변3 입니다', NOW()),
       (4, '답변4 입니다', NOW()),
       (5, '답변5 입니다', NOW());

-- 결과 더미 데이터
INSERT INTO result_tb (result_name)
VALUES ('승'),
       ('무'),
       ('패');

INSERT INTO sponsor_tb (sponsor_name)
VALUES ('BringItOn'),
       ('그린'),
       ('국방부');

-- 리그 일정 더미 데이터
INSERT INTO league_match_tb (league_id, league_match_date, league_match_time, home_team_id, away_team_id,
                             score_home_team, score_away_team, winner_id)
VALUES (1, '2024-02-01', '15:00:00', 1, 2, 2, 0, 1),
       (1, '2023-02-02', '14:30:00', 2, 1, 1, 3, NULL);

-- 경기 기록 더미 데이터
INSERT INTO record_tb (team_id, league_id, rank, get_goal, lose_goal, goal_difference)
VALUES (1, 1, '1', '2', '1', '1'),
       (2, 1, '2', '1', '2', '7');

-- 리그 더미 데이터
INSERT INTO league_tb (league_name, apply_start, apply_end, competition_start, competition_end, location_id,
                       sponsor_id, recruitment, recruitment_status)
VALUES ('서울리그', '2023-01-10', '2023-01-20', '2024-02-01', '2023-06-01', 1, 'Sponsor 1', 10, 'Recruiting'),
       ('경기리그', '2024-01-15', '2023-01-25', '2024-02-10', '2023-06-10', 2, 'Sponsor 2', 12, 'Closed');

-- 캠페인 더미 데이터
INSERT INTO campaign_tb (campaign_pic, campaign_name, campaign_start, campaign_end, region_id)
VALUES ('SoccerBanner1.png', '서울리그', '2023-04-01', '2023-12-01', 1),
       ('SoccerBanner2.png', '경기리그', '2023-04-15', '2023-12-15', 2);

INSERT INTO board_tb (board_title, board_content, created_at, user_id)
VALUES ('서울지역 매칭 하실분?', '서울지역 경기 매칭할 사람 드루와', CURRENT_TIMESTAMP, 1),
       ('이거 다른데서 경기 매칭 가능한가요?', '소속팀이 원정개념으로 다른 타지가서 매칭해도 가능한가요?', CURRENT_TIMESTAMP, 1),
       ('지역 스타디움', '스타디움 가격 너무 천차만별인데 이거 왜 그럼?', CURRENT_TIMESTAMP, 2),
       ('이전에 용병으로 뛰신분 찾습니다', '일주일전에 부산에서 그냥 인원필요해서 같이 뛰신분 너무 잘해서 혹시 아시나요?', CURRENT_TIMESTAMP, 2);

INSERT INTO reply_tb (`comment`, created_at, user_id, board_id)
VALUES ('신청합니다!', NOW(), 2, 1),
       ('신청2', NOW(), 3, 1),
       ('신청3', NOW(), 4, 1),
       ('신청4', NOW(), 5, 1),
       ('매주는 안되고 격주는 가능해요', NOW(), 6, 1),
       ('그거 가능해요', NOW(), 3, 2),
       ('잘 모르겠네용 ㅜㅜ', NOW(), 2, 2),
       ('아마 가능한걸로 알아요', NOW(), 7, 2),
       ('알빠노', NOW(), 5, 3),
       ('물가가 다르나까,,,,,,,', NOW(), 4, 3),
       ('부산에서 활동하시는 분한테 물어보면 빠를듯요', NOW(), 1, 4),
       ('오 찾을 정도면 얼마나 잘하는거지?', NOW(), 3, 4),
       ('찾기 겁나 힘들듯', NOW(), 7, 4),
       ('ㅁㄴ이ㅡㅁ르ㅜㅏㅣ무', NOW(), 6, 4),
       ('축구 드르와', NOW(), 8, 4),
       ('내가 제일 잘함 ㅅㄱ', NOW(), 9, 4);
