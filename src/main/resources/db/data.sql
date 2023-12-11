-- user_tb
INSERT INTO user_tb (username, nickname, password, user_email, user_address, user_phone_number, user_pic_url,
                     user_division, company_name, account_number, account_name, created_at, bank_id, team_id)

VALUES ('ssar', '대욱', 'password1', 'ssar@nate.com', '서울시 강남구', '010-1111-1111', 'default_profile.jpg', '호스트',
        'Company 1', '123456789', '나의 계좌1', NOW(), 1, 1),
       ('cos', '세환', 'password', 'cos@nate.com', '서울시 마포구', '010-2222-2222', 'default_profile.jpg', '게스트',
        'Company 2', '234567891', '나의 계좌2', NOW(), 2, 2),
       ('love', '언약', 'password', 'love@nate.com', '서울시 남구', '010-3333-3333', 'default_profile.jpg', '게스트',
        'Company 3', '345678912', '나의 계좌3', NOW(), 1, 3),
       ('peace', '채빈', 'password', 'peace@nate.com', '서울시 강남구', '010-4444-4444', 'default_profile.jpg', '호스트',
        'Company 4', '456789123', '나의 계좌4', NOW(), 3, 4),
       ('ssar1', '길동', 'password', 'ssar1@nate.com', '서울시 강남구', '010-5555-5555', 'default_profile.jpg', '게스트',
        'Company 5', '567891234', '나의 계좌5', NOW(), 1, 5),
       ('ssar2', '보고', 'password', 'ssar2@nate.com', '서울시 강남구', '010-6666-6666', 'default_profile.jpg', '게스트',
        'Company 6', '67891234', '나의 계좌6', NOW(), 1, 6),
       ('ssar3', '꺽정', 'password', 'ssar3@nate.com', '서울시 강남구', '010-7777-7777', 'default_profile.jpg', '게스트',
        'Company 7', '789123456', '나의 계좌7', NOW(), 1, 7),
       ('ssar4', '허준', 'password', 'ssar@nate.com', '서울시 강남구', '010-8888-8888', 'default_profile.jpg', '게스트',
        'Company 8', '891234567', '나의 계좌8', NOW(), 1, 8),
       ('ssa5', '민수', 'password', 'ssar@nate.com', '서울시 강남구', '010-9999-9999', 'default_profile.jpg', '게스트',
        'Company 9', '912345678', '나의 계좌9', NOW(), 1, 9),
       ('ssar6', '영희', 'password', 'ssar@nate.com', '서울시 강남구', '010-1010-1010', 'default_profile.jpg', '게스트',
        'Company 10', '109876543', '나의 계좌10', NOW(), 1, 10);

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
INSERT INTO space_tb (space_name, description, capacity, price_per_hour, biz_start_time, biz_end_time, sector,
                      is_inside, region_id, created_at, user_id, sport_id)
VALUES ('축구공간1', '축구공간1 이용해보세요', '10', '10000', '09:00', '23:00', 'Sector 1', true, 1, CURRENT_TIMESTAMP, 1, 1),
       ('축구공간2', '축구공간2 이용해보세요', '12', '12000', '09:00', '23:00', 'Sector 2', false, 2, CURRENT_TIMESTAMP, 1, 1),
       ('축구공간3', '축구공간3 이용해보세요', '14', '14000', '09:00', '23:00', 'Sector 3', true, 3, CURRENT_TIMESTAMP, 4, 1),
       ('축구공간4', '축구공간4 이용해보세요', '20', '20000', '09:00', '23:00', 'Sector 4', false, 1, CURRENT_TIMESTAMP, 4, 1),
       ('풋살공간1', '풋살공간1 이용해보세요', '16', '16000', '09:00', '23:00', 'Sector 5', true, 2, CURRENT_TIMESTAMP, 1, 3),
       ('풋살공간2', '풋살공간2 이용해보세요', '10', '10000', '09:00', '23:00', 'Sector 6', false, 3, CURRENT_TIMESTAMP, 1, 3),
       ('풋살공간3', '풋살공간3 이용해보세요', '10', '10000', '09:00', '23:00', 'Sector 7', true, 1, CURRENT_TIMESTAMP, 4, 3),
       ('풋살공간4', '풋살공간4 이용해보세요', '10', '10000', '09:00', '23:00', 'Sector 8', false, 2, CURRENT_TIMESTAMP, 4, 3);

-- 시설 공간 예약 더미 데이터
INSERT INTO reservation_tb (reservation_date, start_time, end_time, status, matching, created_at, user_id, space_id)
VALUES ('2024-01-01', '10:00:00', '12:00:00', '예약진행중', true, CURRENT_TIMESTAMP, 2, 1),
       ('2024-01-02', '14:00:00', '16:00:00', '예약완료', false, CURRENT_TIMESTAMP, 3, 2),
       ('2024-01-01', '12:00:00', '14:00:00', '예약완료', true, CURRENT_TIMESTAMP, 5, 5),
       ('2024-01-02', '10:00:00', '12:00:00', '예약진행중', true, CURRENT_TIMESTAMP, 6, 6),
       ('2024-01-02', '18:00:00', '20:00:00', '예약진행중', false, CURRENT_TIMESTAMP, 7, 7),
       ('2024-01-01', '19:00:00', '21:00:00', '예약진행중', false, CURRENT_TIMESTAMP, 8, 8);


-- 팀 더미 데이터
INSERT INTO team_tb (team_name, team_capacity, team_pic_url, team_introduce, level, region_id, sport_id)
VALUES ('축구Team 1', '10', 'psg.jpg', '즐거운 축구팀', '상', 1, 1),
       ('축구Team 2', '10', 'coin.jpg', '행복한 축구팀', '중', 2, 1),
       ('축구Team 3', '10', 'coin.jpg', '밝은 축구팀', '상', 1, 1),
       ('축구Team 4', '10', 'coin.jpg', '기운넘치는 축구팀', '하', 1, 1),
       ('축구Team 5', '10', 'coin.jpg', '폼미친 축구팀', '중', 2, 1),
       ('축구Team 6', '10', 'coin.jpg', '예능 축구팀', '증', 3, 1),
       ('축구Team 7', '10', 'coin.jpg', '초보자 축구팀', '하', 1, 1),
       ('축구Team 8', '10', 'coin.jpg', '초보탈출 축구팀', '하', 1, 1),
       ('축구Team 9', '10', 'coin.jpg', '세모발 축구팀', '하', 1, 1),
       ('축구Team 10', '10', 'coin.jpg', '능력자 축구팀', '상', 2, 1);


-- 한줄리뷰 더미 데이터
INSERT INTO review_tb (rating, comment, space_id, user_id)
VALUES (4, '좋아요!', 1, 2),
       (5, '편해요!', 1, 3),
       (4, '다음에도 이용할래요!', 1, 4),
       (5, 'Nice space!', 1, 5),
       (5, '상태가 좋아요!', 2, 1),
       (4, '축구해요!', 2, 2),
       (4, '잔디좋아!', 2, 3),
       (5, '다음에 또 올래요!', 2, 5);

-- 매칭 더미 데이터
INSERT INTO matching_tb (reservation_id, match_user_id, matching_status)
VALUES (1, 1, '매칭대기'),
       (2, 2, '매칭대기'),
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


-- payment_tb 테이블
INSERT INTO payment_tb (price, created_at, user_id)
values ('10000', '2023-12-06', 1),
       ('100000', '2023-12-02', 1),
       ('30000', '2023-11-15', 1),
       ('10000', '2023-11-10', 1);

-- 포인트 사용내역 더미 데이터
INSERT INTO point_tb (my_point, created_at, user_id)
VALUES ('10000', NOW(), 1),
       ('100000', NOW(), 1),
       ('300000', NOW(), 1),
       ('10000', NOW(), 1);

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
INSERT INTO notice_tb (notice_category, notice_title, notice_content, created_at)
VALUES (1, '공지1', '공지1 입니다', NOW()),
       (2, '공지2', '공지2 입니다', NOW()),
       (3, '공지3', '공지3 입니다', NOW()),
       (1, '공지4', '공지4 입니다', NOW()),
       (2, '공지5', '공지5 입니다', NOW());

-- 문의 더미 데이터
INSERT INTO inquire_tb (inquire_title, inquire_content, created_at, user_id)
VALUES ('문의 1', '문의1 내용입니다', NOW(), 1),
       ('문의 2', '문의2 내용입니다', NOW(), 1),
       ('문의 3', '문의3 내용입니다', NOW(), 2),
       ('문의 4', '문의4 내용입니다', NOW(), 2),
       ('문의 5', '문의5 내용입니다', NOW(), 1);

-- 답변 더미 데이터
INSERT INTO answer_tb (inquire_id, answer_content, created_at)
VALUES (1, '답변1 입니다', NOW()),
       (2, '답변2 입니다', NOW()),
       (3, '답변3 입니다', NOW()),
       (4, '답변4 입니다', NOW()),
       (5, '답변5 입니다', NOW());

-- 결과 더미 데이터
INSERT INTO result_tb (resultname)
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
