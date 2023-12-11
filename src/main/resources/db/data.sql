-- -- teams 테이블
-- insert into teams(team_name) values('FC세환');
-- insert into teams(team_name) values('FC언약');
-- insert into teams(team_name) values('FC혜림');
-- insert into teams(team_name) values('FC대욱');
-- insert into teams(team_name) values('FC감자');
-- insert into teams(team_name) values('FC방탄조끼');
-- insert into teams(team_name) values('FC애플');
-- insert into teams(team_name) values('FC삼성');
-- insert into teams(team_name) values('FC그린');
-- insert into teams(team_name) values('FC자바');
--
-- insert into teams(team_name) values('폴짝');
-- insert into teams(team_name) values('덩크');
-- insert into teams(team_name) values('제임수르브론');
-- insert into teams(team_name) values('마이클조던');
--
-- insert into teams(team_name) values('풋살히어로즈');
-- insert into teams(team_name) values('제주감귤즈');
-- insert into teams(team_name) values('세모발');
-- insert into teams(team_name) values('아크로바틱');
--
-- -- users 테이블
-- insert into user_tb(id, username, password, user_email, user_address, user_phone_number)
-- values (1, 'ssar', '1234', 'ssar@nate.com', '서울 강남', '010-1111-1111');
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(1, 'cos', '1234','cos@nate.com', '서울 강남', '010-2222-2222', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(1, 'love', '1234','love@nate.com', '서울 강남', '010-3333-3333', true);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(1, 'qwer', '1234','qwer@nate.com', '서울 강남', '010-4444-4444',true);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(1, 'asdf', '1234','asdf@nate.com', '서울 강남', '010-5555-5555', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(2, 'sky', '1234','sky@nate.com', '서울 강남', '010-6666-6666', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(2, 'peace', '1234','peace@nate.com', '서울 강남', '010-7777-7777', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(2, 'just', '1234','just@nate.com', '서울 강남', '010-8888-8888', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(3, 'once', '1234','once@nate.com', '서울 강남', '010-9999-9999', true);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(3, 'sun', '1234','sun@nate.com', '서울 강남', '010-1010-1010', true);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(4, 'moon', '1234','moon@nate.com', '서울 강남', '010-2121-2121', true);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(4, 'star', '1234','star@nate.com', '서울 강남', '010-3131-3131', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(5, 'tree', '1234','tree@nate.com', '서울 강남', '010-4242-4242', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(5, 'bird', '1234','bird@nate.com', '서울 강남', '010-7272-7272', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(6, 'sugar', '1234','sugar@nate.com', '서울 강남', '010-7676-7676', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(6, 'nike', '1234','nike@nate.com', '서울 강남', '010-8585-8585', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(7, 'adidas', '1234','adidas@nate.com', '서울 강남', '010-5656-5656', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(7, 'gun', '1234','gun@nate.com', '서울 강남', '010-9696-9696', false);
-- insert into users(team_id, username, password, user_email, user_address, user_phone_number, host)
-- values(8, 'iron', '1234','iron@nate.com', '서울 강남', '010-5050-5050', false);
--
-- -- banks 테이블
-- insert into banks(bank_name) values('우리은행');
-- insert into banks(bank_name) values('신한은행');
-- insert into banks(bank_name) values('농협');
-- insert into banks(bank_name) values('신협');
-- insert into banks(bank_name) values('신한은행');
-- insert into banks(bank_name) values('우리은행');
-- insert into banks(bank_name) values('국민은행');
-- insert into banks(bank_name) values('기업은행');
-- insert into banks(bank_name) values('카카오뱅크');
--
-- -- in_out 테이블
-- insert into in_out(in_out_name) values('실내');
-- insert into in_out(in_out_name) values('실외');
--
-- -- sports 테이블
-- insert into sports(sport_name, in_out_id) values('축구', 1);
-- insert into sports(sport_name, in_out_id) values('농구', 1);
-- insert into sports(sport_name, in_out_id) values('풋살', 1);
-- insert into sports(sport_name, in_out_id) values('축구', 2);
-- insert into sports(sport_name, in_out_id) values('농구', 2);
-- insert into sports(sport_name, in_out_id) values('풋살', 2);
--
-- -- regions 테이블
-- insert into regions(region_name) values('서울');
-- insert into regions(region_name) values('경기');
-- insert into regions(region_name) values('인천');
-- insert into regions(region_name) values('충북');
-- insert into regions(region_name) values('충남');
-- insert into regions(region_name) values('전북');
-- insert into regions(region_name) values('전남');
-- insert into regions(region_name) values('경북');
-- insert into regions(region_name) values('대구');
-- insert into regions(region_name) values('울산');
-- insert into regions(region_name) values('경남');
-- insert into regions(region_name) values('부산');
-- insert into regions(region_name) values('강원');
-- insert into regions(region_name) values('제주');
--
-- -- locations 테이블
-- insert into locations(region_id, location_name) values(1, '강동구');
-- insert into locations(region_id, location_name) values(1, '강서구');
-- insert into locations(region_id, location_name) values(1, '강남구');
-- insert into locations(region_id, location_name) values(1, '강북구');
-- insert into locations(region_id, location_name) values(1, '서초');
-- insert into locations(region_id, location_name) values(2, '수원');
-- insert into locations(region_id, location_name) values(2, '성남');
-- insert into locations(region_id, location_name) values(2, '용인');
-- insert into locations(region_id, location_name) values(2, '평택');
-- insert into locations(region_id, location_name) values(2, '연천');
-- insert into locations(region_id, location_name) values(3, '남동구');
-- insert into locations(region_id, location_name) values(3, '연수구');
-- insert into locations(region_id, location_name) values(3, '계양구');
-- insert into locations(region_id, location_name) values(3, '강화군');
-- insert into locations(region_id, location_name) values(4, '청주');
-- insert into locations(region_id, location_name) values(4, '충주');
-- insert into locations(region_id, location_name) values(4, '괴산');
-- insert into locations(region_id, location_name) values(5, '천안');
-- insert into locations(region_id, location_name) values(5, '안산');
-- insert into locations(region_id, location_name) values(5, '논산');
-- insert into locations(region_id, location_name) values(6, '전주');
-- insert into locations(region_id, location_name) values(6, '군산');
-- insert into locations(region_id, location_name) values(6, '남원');
-- insert into locations(region_id, location_name) values(7, '목포');
-- insert into locations(region_id, location_name) values(7, '여수');
-- insert into locations(region_id, location_name) values(7, '해남');
-- insert into locations(region_id, location_name) values(8, '포항');
-- insert into locations(region_id, location_name) values(8, '경주');
-- insert into locations(region_id, location_name) values(9, '수성구');
-- insert into locations(region_id, location_name) values(9, '달서구');
-- insert into locations(region_id, location_name) values(10, '태화');
-- insert into locations(region_id, location_name) values(11, '창원');
-- insert into locations(region_id, location_name) values(11, '마산');
-- insert into locations(region_id, location_name) values(12, '사하');
-- insert into locations(region_id, location_name) values(12, '중구');
-- insert into locations(region_id, location_name) values(12, '진구');
-- insert into locations(region_id, location_name) values(12, '해운대구');
-- insert into locations(region_id, location_name) values(13, '춘천');
-- insert into locations(region_id, location_name) values(13, '평창');
-- insert into locations(region_id, location_name) values(13, '화천');
-- insert into locations(region_id, location_name) values(14, '제주');
-- insert into locations(region_id, location_name) values(14, '서귀포');
--
-- -- areas 테이블
-- insert into areas(location_id, area_name) values(1, 'A');
-- insert into areas(location_id, area_name) values(1, 'B');
-- insert into areas(location_id, area_name) values(1, 'C');
--
-- insert into areas(location_id, area_name) values(2, '가');
-- insert into areas(location_id, area_name) values(2, '나');
-- insert into areas(location_id, area_name) values(2, '다');
--
-- insert into areas(location_id, area_name) values(3, 'a');
-- insert into areas(location_id, area_name) values(3, 'b');
-- insert into areas(location_id, area_name) values(3, 'c');
--
--
--
-- -- sponsors 테이블
-- insert into sponsors(sponsor_name) values('BringItOn');
-- insert into sponsors(sponsor_name) values('그린');
-- insert into sponsors(sponsor_name) values('아카데미');
--
-- -- leagues 테이블
-- -- 축구
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('그린아카데미최강자', 'Soccerbanner1.png', '2023-05-01', '2023-05-31', '2023-06-01', '2023-12-31', 1, 1, 10, '마감');
--
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('서울축구최강자', 'Soccerbanner1.png', '2024-01-01', '2024-01-31', '2024-02-01', '2024-05-31', 1, 1, 10, '모집전');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('경기축구', 'Soccerbanner2.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 2, 1, 8, '모집중');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('한마음축구', 'Soccerbanner3.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 3, 2, 10, '모집중');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('우리축구리그', 'Soccerbanner4.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 4, 2, 10, '모집중');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('온누리리그', 'Soccerbanner2.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 5, 3, 10, '모집중');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('지역상생축구리그', 'Soccerbanner3.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 6, 3, 10, '모집중');
-- -- 농구
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('서울농구최강자', 'Soccerbanner4.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 1, 1, 10, '모집중');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('경기농구', 'Soccerbanner1.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 1, 1, 10, '모집중');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('우리농구리그', 'Soccerbanner1.png', '2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 1, 1, 10, '모집중');
-- --풋살
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('어택풋살리그', 'Soccerbanner2.png','2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 1, 3, 10, '모집중');
-- insert into leagues(league_name, league_pic, apply_start, apply_end, competition_start, competition_end, region_id, sponsor_id, recruitment, recruitment_status)
-- values('시장배풋살리그', 'Soccerbanner3.png','2023-12-01', '2023-12-31', '2024-01-02', '2024-04-30', 1, 3, 10, '모집중');
--
-- -- standings 테이블
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(1, 1, '1', '20', '12');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(2, 1, '2', '18', '11');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(3, 1, '3', '18', '10');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(4, 1, '4', '16', '10');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(5, 1, '5', '16', '8');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(6, 1, '6', '14', '7');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(7, 1, '7', '12', '4');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(8, 1, '8', '10', '1');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(9, 1, '9', '8', '-5');
-- insert into standings(team_id, league_id, rank, points, goal_difference) values(10, 1, '10', '3', '-10');
--
-- -- options 테이블
-- insert into options(option_name) values('주차장');
-- insert into options(option_name) values('샤워장');
-- insert into options(option_name) values('와이파이');
-- insert into options(option_name) values('장비대여');
--
-- -- spaces 테이블
-- insert into spaces(user_id, spaces_name, region_id, location_id, area_id, description,
--                    space_pic, biz_start_time, biz_end_time, bank_id, account_number,
--                    account_holder, capacity, in_out_id, price_per_hour)
-- values(1, '서울체육관', 1, 2, 1, '최고의 체육시설 서울체육관',
--        'Futsal.png', '07:30:00', '23:00:00', 1, '123123', 'ssar', '30', 1, '20000');
-- insert into spaces(user_id, spaces_name, region_id, location_id, area_id, description,
--                    space_pic, biz_start_time, biz_end_time, bank_id, account_number,
--                    account_holder, capacity, in_out_id, price_per_hour)
-- values(1, '서울체육관', 1, 2, 2, '최고의 체육시설 서울체육관',
--        'Futsal.png', '07:30:00', '23:00:00', 1, '123123', 'ssar', '20', 1, '15000');
-- insert into spaces(user_id, spaces_name, region_id, location_id, area_id, description,
--                    space_pic, biz_start_time, biz_end_time, bank_id, account_number,
--                    account_holder, capacity, in_out_id, price_per_hour)
-- values(1, '서울체육관', 1, 2, 3, '최고의 체육시설 서울체육관',
--        'Futsal.png', '07:30:00', '23:00:00', 2, '123123', 'ssar', '30', 2, '10000');
--
-- insert into spaces(user_id, spaces_name, region_id, location_id, area_id, description,
--                    space_pic, biz_start_time, biz_end_time, bank_id, account_number,
--                    account_holder, capacity, in_out_id, price_per_hour)
-- values(3, '경기중앙풋살장', 2, 7, 1, '종합 풋살장',
--        'soccerball.png', '09:00:00', '22:00:00', 2, '987654', 'love', '10', 2, '10000');
-- insert into spaces(user_id, spaces_name, region_id, location_id, area_id, description,
--                    space_pic, biz_start_time, biz_end_time, bank_id, account_number,
--                    account_holder, capacity, in_out_id, price_per_hour)
-- values(3, '경기중앙풋살장', 2, 7, 2, '종합 풋살장',
--        'soccerball.png', '09:00:00', '22:00:00', 2, '987654', 'love', '10', 2, '10000');
-- insert into spaces(user_id, spaces_name, region_id, location_id, area_id, description,
--                    space_pic, biz_start_time, biz_end_time, bank_id, account_number,
--                    account_holder, capacity, in_out_id, price_per_hour)
-- values(3, '경기중앙풋살장', 2, 7, 3, '종합 풋살장',
--        'soccerball.png', '09:00:00', '22:00:00', 2, '987654', 'love', '10', 2, '10000');
--
--
-- -- options 테이블
-- insert into selected_options(option_id, space_id) values(1, 1);
-- insert into selected_options(option_id, space_id) values(3, 1);
-- insert into selected_options(option_id, space_id) values(2, 2);
-- insert into selected_options(option_id, space_id) values(3, 2);
-- insert into selected_options(option_id, space_id) values(4, 2);
--
-- -- bookmarks 테이블
-- insert into bookmarks(space_id, user_id) values(1, 1);
-- insert into bookmarks(space_id, user_id) values(2, 1);
-- insert into bookmarks(space_id, user_id) values(4, 1);
-- insert into bookmarks(space_id, user_id) values(1, 2);
-- insert into bookmarks(space_id, user_id) values(3, 2);
--
-- -- reservations 테이블
-- insert into reservations(reserv_no, space_id, user_id, reservation_date,
--                          start_time, end_time, status, matching)
-- values('00100159', 1, 2, '2023-12-25', '12:00:00', '14:00:00', '결제대기', false);
-- insert into reservations(reserv_no, space_id, user_id, reservation_date,
--                          start_time, end_time, status, matching)
-- values('00102159',1, 2, '2023-12-25', '14:00:00', '16:00:00', '결제완료', true);
-- insert into reservations(reserv_no,space_id, user_id, reservation_date,
--                          start_time, end_time, status, matching)
-- values('00110159',2, 4, '2023-12-25', '12:00:00', '14:00:00', '결제완료', true);
-- insert into reservations(reserv_no, space_id, user_id, reservation_date,
--                          start_time, end_time, status, matching)
-- values('00100623',2, 3, '2023-12-25', '10:00:00', '12:00:00', '결제완료', false);
-- insert into reservations(reserv_no, space_id, user_id, reservation_date,
--                          start_time, end_time, status, matching)
-- values('00110351',2, 1, '2023-12-24', '10:00:00', '12:00:00', '결제완료', true);
-- insert into reservations(reserv_no, space_id, user_id, reservation_date,
--                          start_time, end_time, status, matching)
-- values('00100417',2, 1, '2023-12-24', '12:00:00', '14:00:00', '결제완료', true);
-- insert into reservations(reserv_no, space_id, user_id, reservation_date,
--                          start_time, end_time, status, matching)
-- values('00200324',2, 1, '2023-12-25', '14:00:00', '16:00:00', '결제완료', true);
--
-- -- reviews 테이블
-- insert into reviews(reservation_id, user_id, comment) values(2, 2, '시설이 깔끔해요');
-- insert into reviews(reservation_id, user_id, comment) values(3, 4, '가까워요');
-- insert into reviews(reservation_id, user_id, comment) values(4, 3, '다음에 또 이용할래요');
--
-- -- matchings 테이블
-- insert into matchings(reservation_id, match_user_id, matching_status)
-- values(2, 5, '매칭완료');
-- insert into matchings(reservation_id, match_user_id, matching_status)
-- values(3, 7, '매칭대기');
-- insert into matchings(reservation_id, match_user_id, matching_status)
-- values(2, 5, '매칭완료');
-- insert into matchings(reservation_id, match_user_id, matching_status)
-- values(2, 5, '매칭완료');
-- insert into matchings(reservation_id, match_user_id, matching_status)
-- values(2, 5, '매칭대기');
-- insert into matchings(reservation_id, match_user_id, matching_status)
-- values(2, 5, '매칭대기');
--
-- -- charges 테이블
-- insert into charges(charge_amount) values('10000');
-- insert into charges(charge_amount) values('20000');
-- insert into charges(charge_amount) values('30000');
-- insert into charges(charge_amount) values('50000');
-- insert into charges(charge_amount) values('80000');
-- insert into charges(charge_amount) values('100000');
-- insert into charges(charge_amount) values('150000');
-- insert into charges(charge_amount) values('200000');
--
-- -- payments 테이블
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(1, '10000', '2023-12-06', false, null, 1);
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(6, '100000', '2023-12-02', true, '2023-12-02', 1);
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(3, '30000', '2023-11-15', false, null, 1);
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(6, '100000', '2023-11-10', false, null, 1);
--
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(6, '100000', '2023-12-06', false, null, 2);
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(7, '150000', '2023-11-30', true, '2023-11-30', 2);
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(2, '20000', '2023-10-30', true, '2023-10-30', 2);
-- insert into payments(charge_id, price, payment_date, refund, refund_date, user_id)
-- values(8, '200000', '2023-10-15', false, null, 2);
--
-- -- scores 테이블
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(1, 1, '20', '6', '0', '2', '12');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(2, 1, '18', '5', '0', '3', '11');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(3, 1, '18', '5', '0', '3', '10');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(4, 1, '16', '4', '0', '4', '10');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(5, 1, '16', '5', '2', '1', '8');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(6, 1, '14', '4', '2', '2', '7');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(7, 1, '12', '3', '2', '3', '4');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(8, 1, '10', '3', '4', '1', '1');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(9, 1, '8', '1', '2', '5', '-5');
-- insert into scores(team_id, league_id, total_points, total_wins,
--                    total_losses, total_draws, goal_difference)
-- values(10, 1, '3', '1', '7', '0', '-10');
--
-- -- notice_categories 테이블
-- insert into notice_categories(notice_category) values('정기');
-- insert into notice_categories(notice_category) values('중요');
-- insert into notice_categories(notice_category) values('긴급');
--
-- -- notices 테이블
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지1', '공지1의 내용입니다', '2023-10-11', 3);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지2', '공지2의 내용입니다', '2023-11-01', 1);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지3', '공지3의 내용입니다', '2023-11-5', 2);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지4', '공지4의 내용입니다', '2023-11-12', 3);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지5', '공지5의 내용입니다', '2023-11-19', 3);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지6', '공지6의 내용입니다', '2023-11-26', 2);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지7', '공지7의 내용입니다', '2023-11-30', 1);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지8', '공지8의 내용입니다', '2023-12-01', 1);
-- insert into notices(notice_title, notice_content, created_at, notice_category_id)
-- values('공지9', '공지9의 내용입니다', '2023-12-05', 3);
--
-- -- inquires 테이블
-- insert into inquires(inquire_title, inquire_content, user_id)
-- values('문의1', '문의내용1 입니다', 1);
-- insert into inquires(inquire_title, inquire_content, user_id)
-- values('문의2', '문의내용2 입니다', 2);
-- insert into inquires(inquire_title, inquire_content, user_id)
-- values('문의3', '문의내용3 입니다', 2);
-- insert into inquires(inquire_title, inquire_content, user_id)
-- values('문의4', '문의내용4 입니다', 4);
-- insert into inquires(inquire_title, inquire_content, user_id)
-- values('문의5', '문의내용5 입니다', 5);
--
-- -- answers 테이블
-- insert into answers(inquire_id, answer_content) values('1', '문의1에 대한 답변1');
-- insert into answers(inquire_id, answer_content) values('2', '문의2에 대한 답변2');
-- insert into answers(inquire_id, answer_content) values('3', '문의3에 대한 답변3');
-- insert into answers(inquire_id, answer_content) values('4', '문의4에 대한 답변4');
-- insert into answers(inquire_id, answer_content) values('5', '문의5에 대한 답변5');
--
-- -- league_matches 테이블
-- insert into league_matches(league_id, league_match_date, league_match_time, home_team_id,
--                            away_team_id, score_home_team, score_away_team, winner_id)
-- values(1, '2023-10-29', '10:00:00', 1, 2, '3', '2', 1);
-- insert into league_matches(league_id, league_match_date, league_match_time, home_team_id,
--                            away_team_id, score_home_team, score_away_team, winner_id)
-- values(1, '2023-10-29', '14:00:00', 3, 4, '1', '3', 4);
-- insert into league_matches(league_id, league_match_date, league_match_time, home_team_id,
--                            away_team_id, score_home_team, score_away_team, winner_id)
-- values(1, '2023-11-05', '10:00:00', 5, 6, '3', '3', null);
-- insert into league_matches(league_id, league_match_date, league_match_time, home_team_id,
--                            away_team_id, score_home_team, score_away_team, winner_id)
-- values(1, '2023-11-05', '14:00:00', 7, 8, '3', '2', 7);
-- insert into league_matches(league_id, league_match_date, league_match_time, home_team_id,
--                            away_team_id, score_home_team, score_away_team, winner_id)
-- values(1, '2023-11-12', '10:00:00', 9, 10, '0', '2', 10);
-- insert into league_matches(league_id, league_match_date, league_match_time, home_team_id,
--                            away_team_id, score_home_team, score_away_team, winner_id)
-- values(1, '2023-11-12', '13:00:00', 1, 10, '3', '0', 1);
--
-- --더미 완료
-------------------------------------------------------------------------------------------

-- user_tb
INSERT INTO user_tb (username, nickname, password, user_email, user_address, user_phone_number, user_pic_url,
                     user_division, company_name, account_number, account_name, created_at, bank_id)
VALUES ('ssar', '대욱', '1234', 'ssar@nate.com', '서울시 강남구', '010-1111-1111', 'default_profile.jpg', '호스트',
        'Company 1', '123456789', '나의 계좌1', NOW(), 1),
       ('cos', '세환', '1234', 'cos@nate.com', '서울시 마포구', '010-2222-2222', 'default_profile.jpg', '게스트',
        'Company 2', '234567891', '나의 계좌2', NOW(), 2),
       ('love', '언약', '1234', 'love@nate.com', '서울시 남구', '010-3333-3333', 'default_profile.jpg', '게스트',
        'Company 3', '345678912', '나의 계좌3', NOW(), 1),
       ('peace', '채빈', '1234', 'peace@nate.com', '서울시 강남구', '010-4444-4444', 'default_profile.jpg', '호스트',
        'Company 4', '456789123', '나의 계좌4', NOW(), 3),
       ('ssar1', '길동', '1234', 'ssar1@nate.com', '서울시 강남구', '010-5555-5555', 'default_profile.jpg', '게스트',
        'Company 5', '567891234', '나의 계좌5', NOW(), 1),
       ('ssar2', '보고', '1234', 'ssar2@nate.com', '서울시 강남구', '010-6666-6666', 'default_profile.jpg', '게스트',
        'Company 6', '67891234', '나의 계좌6', NOW(), 1),
       ('ssar3', '대욱', '1234', 'ssar3@nate.com', '서울시 강남구', '010-7777-7777', 'default_profile.jpg', '게스트',
        'Company 7', '789123456', '나의 계좌7', NOW(), 1),
       ('ssar', '대욱', '1234', 'ssar@nate.com', '서울시 강남구', '010-8888-8888', 'default_profile.jpg', '게스트',
        'Company 8', '891234567', '나의 계좌8', NOW(), 1),
       ('ssar', '대욱', '1234', 'ssar@nate.com', '서울시 강남구', '010-9999-9999', 'default_profile.jpg', '게스트',
        'Company 9', '912345678', '나의 계좌9', NOW(), 1),
       ('ssar', '대욱', '1234', 'ssar@nate.com', '서울시 강남구', '010-1010-1010', 'default_profile.jpg', '게스트',
        'Company 10', '109876543', '나의 계좌10', NOW(), 1);

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
INSERT INTO team_tb (team_name, team_capacity, team_pic_url, level, region_id, sport_id, user_id)
VALUES ('축구Team 1', '10', 'coin.jpg', '상', 1, 1, 1),
       ('축구Team 2', '10', 'coin.jpg', '중', 2, 1, 2),
       ('축구Team 3', '10', 'coin.jpg', '상', 1, 1, 3),
       ('축구Team 4', '10', 'coin.jpg', '하', 1, 1, 4),
       ('축구Team 5', '10', 'coin.jpg', '중', 2, 1, 5),
       ('축구Team 6', '10', 'coin.jpg', '증', 3, 1, 6),
       ('축구Team 7', '10', 'coin.jpg', '하', 1, 1, 7),
       ('축구Team 8', '10', 'coin.jpg', '하', 1, 1, 8),
       ('축구Team 9', '10', 'coin.jpg', '하', 1, 1, 9),
       ('축구Team 10', '10', 'coin.jpg', '상', 2, 1, 10);


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


-- 선택 옵션 더미 데이터
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


-- 공지사항 더미 데이터
INSERT INTO notice_tb (notice_title, notice_content, created_at)
VALUES ('공지1', '공지1 입니다', NOW()),
       ('공지2', '공지2 입니다', NOW()),
       ('공지3', '공지3 입니다', NOW()),
       ('공지4', '공지4 입니다', NOW()),
       ('공지5', '공지5 입니다', NOW());

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