-- TB_ROOM 테이블에 데이터 삽입
-- 방 번호 1, 2, 3에 각각 다른 방 정보를 추가
INSERT INTO "TB_ROOM" ("room_num", "room_max", "room_name", "room_price", "checkin", "checkout", "room_info", "bu_id")
VALUES (1, 2, '오션뷰 스위트', 150000, '14:00', '12:00', '넓은 오션뷰 객실', 'B001');
INSERT INTO "TB_ROOM" ("room_num", "room_max", "room_name", "room_price", "checkin", "checkout", "room_info", "bu_id")
VALUES (2, 3, '산장', 120000, '15:00', '11:00', '아늑한 산장', 'B002');
INSERT INTO "TB_ROOM" ("room_num", "room_max", "room_name", "room_price", "checkin", "checkout", "room_info", "bu_id")
VALUES (3, 4, '럭셔리 빌라', 250000, '13:00', '11:00', '개인 수영장이 있는 럭셔리 빌라', 'B003');

-- TB_ROOM_BOOKING 테이블에 데이터 삽입
-- 예약 번호 3건에 대해 각각 다른 예약 정보를 추가
INSERT INTO "TB_ROOM_BOOKING" ("booking_num", "room_num", "email", "checkin", "checkout", "status", "payment", "price", "Field10")
VALUES ('BKG001', 1, 'user1@example.com', TO_DATE('2024-09-20', 'YYYY-MM-DD'), TO_DATE('2024-09-22', 'YYYY-MM-DD'), 1, '카드', '150000', '메모');
INSERT INTO "TB_ROOM_BOOKING" ("booking_num", "room_num", "email", "checkin", "checkout", "status", "payment", "price", "Field10")
VALUES ('BKG002', 2, 'user2@example.com', TO_DATE('2024-09-23', 'YYYY-MM-DD'), TO_DATE('2024-09-24', 'YYYY-MM-DD'), 1, '현금', '120000', '메모');
INSERT INTO "TB_ROOM_BOOKING" ("booking_num", "room_num", "email", "checkin", "checkout", "status", "payment", "price", "Field10")
VALUES ('BKG003', 3, 'user3@example.com', TO_DATE('2024-09-25', 'YYYY-MM-DD'), TO_DATE('2024-09-27', 'YYYY-MM-DD'), 2, '카드', '250000', '메모');

-- TB_BUSINESS 테이블에 데이터 삽입
-- 사업체 3개의 정보를 추가
INSERT INTO "TB_BUSINESS" ("bu_id", "email2", "bu_tel", "bu_address", "bu_title")
VALUES ('B001', 'business1@example.com', '010-1234-5678', '서울시 강남구', '호텔 오션뷰');
INSERT INTO "TB_BUSINESS" ("bu_id", "email2", "bu_tel", "bu_address", "bu_title")
VALUES ('B002', 'business2@example.com', '010-2345-6789', '서울시 서초구', '산장 리조트');
INSERT INTO "TB_BUSINESS" ("bu_id", "email2", "bu_tel", "bu_address", "bu_title")
VALUES ('B003', 'business3@example.com', '010-3456-7890', '서울시 종로구', '럭셔리 빌라');

-- TB_PICTURE 테이블에 데이터 삽입
-- 각 사진의 위치와 관련된 방 또는 사업체 정보를 추가
INSERT INTO "TB_PICTURE" ("location", "room_num", "bu_id")
VALUES ('/images/oceanview.jpg', 1, 'B001');
INSERT INTO "TB_PICTURE" ("location", "room_num", "bu_id")
VALUES ('/images/mountain.jpg', 2, 'B002');
INSERT INTO "TB_PICTURE" ("location", "room_num", "bu_id")
VALUES ('/images/villa.jpg', 3, 'B003');

-- TB_MEMBER 테이블에 데이터 삽입
-- 3명의 회원 정보를 추가
INSERT INTO "TB_MEMBER" ("email", "password", "tel", "name")
VALUES ('user1@example.com', 'password123', '010-1111-2222', '홍길동');
INSERT INTO "TB_MEMBER" ("email", "password", "tel", "name")
VALUES ('user2@example.com', 'password234', '010-2222-3333', '이순신');
INSERT INTO "TB_MEMBER" ("email", "password", "tel", "name")
VALUES ('user3@example.com', 'password345', '010-3333-4444', '유관순');

-- TB_REVIEW 테이블에 데이터 삽입
-- 각 투어에 대한 리뷰 3건을 추가
INSERT INTO "TB_REVIEW" ("rev_num", "email2", "ac_name", "content", "review_date", "score")
VALUES (1, 'user1@example.com', '오션뷰 투어', '정말 멋진 여행이었어요!', TO_DATE('2024-09-10', 'YYYY-MM-DD'), 5);
INSERT INTO "TB_REVIEW" ("rev_num", "email2", "ac_name", "content", "review_date", "score")
VALUES (2, 'user2@example.com', '산장 투어', '자연이 너무 아름다웠어요.', TO_DATE('2024-09-12', 'YYYY-MM-DD'), 4);
INSERT INTO "TB_REVIEW" ("rev_num", "email2", "ac_name", "content", "review_date", "score")
VALUES (3, 'user3@example.com', '럭셔리 빌라 투어', '최고의 서비스였어요!', TO_DATE('2024-09-15', 'YYYY-MM-DD'), 5);

-- TB_TOUR_PICTURE 테이블에 데이터 삽입
-- 투어와 관련된 사진 정보 3건 추가
INSERT INTO "TB_TOUR_PICTURE" ("location", "ac_name")
VALUES ('/tour/ocean.jpg', '오션뷰 투어');
INSERT INTO "TB_TOUR_PICTURE" ("location", "ac_name")
VALUES ('/tour/mountain.jpg', '산장 투어');
INSERT INTO "TB_TOUR_PICTURE" ("location", "ac_name")
VALUES ('/tour/villa.jpg', '럭셔리 빌라 투어');

-- TB_TOUR 테이블에 데이터 삽입
-- 3개의 투어 정보를 추가
INSERT INTO "TB_TOUR" ("ac_name", "ac_address", "tr_info", "act_id", "Field")
VALUES ('오션뷰 투어', '제주도 서귀포시', '바다를 보며 즐기는 투어', 101, 1);
INSERT INTO "TB_TOUR" ("ac_name", "ac_address", "tr_info", "act_id", "Field")
VALUES ('산장 투어', '강원도 평창군', '산 속에서 힐링하는 투어', 102, 2);
INSERT INTO "TB_TOUR" ("ac_name", "ac_address", "tr_info", "act_id", "Field")
VALUES ('럭셔리 빌라 투어', '경기도 가평군', '럭셔리한 휴양을 즐기는 투어', 103, 3);

-- TB_WISHLIST 테이블에 데이터 삽입
-- 3명의 사용자가 관심있는 투어를 추가
INSERT INTO "TB_WISHLIST" ("ac_name", "email")
VALUES ('오션뷰 투어', 'user1@example.com');
INSERT INTO "TB_WISHLIST" ("ac_name", "email")
VALUES ('산장 투어', 'user2@example.com');
INSERT INTO "TB_WISHLIST" ("ac_name", "email")
VALUES ('럭셔리 빌라 투어', 'user3@example.com');

-- TB_RENTCAR 테이블에 데이터 삽입
-- 렌트카 정보 3건 추가
INSERT INTO "TB_RENTCAR" ("car_num", "car_id", "car_name", "car_price", "car_info")
VALUES ('CAR001', 'R001', '쏘나타', 70000, '준중형 세단');
INSERT INTO "TB_RENTCAR" ("car_num", "car_id", "car_name", "car_price", "car_info")
VALUES ('CAR002', 'R002', '카니발', 120000, '대형 밴');
INSERT INTO "TB_RENTCAR" ("car_num", "car_id", "car_name", "car_price", "car_info")
VALUES ('CAR003', 'R003', '아반떼', 60000, '소형 세단');

-- TB_CAR_BOOKING 테이블에 데이터 삽입
-- 렌트카 예약 정보 3건 추가
INSERT INTO "TB_CAR_BOOKING" ("car_num", "car_recieve_place", "car_return_place", "car_time_start", "car_time_over", "email")
VALUES ('CAR001', '제주공항', '제주공항', TO_DATE('2024-09-20', 'YYYY-MM-DD'), TO_DATE('2024-09-22', 'YYYY-MM-DD'), 'user1@example.com');
INSERT INTO "TB_CAR_BOOKING" ("car_num", "car_recieve_place", "car_return_place", "car_time_start", "car_time_over", "email")
VALUES ('CAR002', '서울역', '서울역', TO_DATE('2024-09-23', 'YYYY-MM-DD'), TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'user2@example.com');
INSERT INTO "TB_CAR_BOOKING" ("car_num", "car_recieve_place", "car_return_place", "car_time_start", "car_time_over", "email")
VALUES ('CAR003', '김포공항', '김포공항', TO_DATE('2024-09-26', 'YYYY-MM-DD'), TO_DATE('2024-09-28', 'YYYY-MM-DD'), 'user3@example.com');

-- TB_CATEGORY 테이블에 데이터 삽입
-- 투어 카테고리 정보 3건 추가
INSERT INTO "TB_CATEGORY" ("ac_name", "category")
VALUES ('오션뷰 투어', '자연');
INSERT INTO "TB_CATEGORY" ("ac_name", "category")
VALUES ('산장 투어', '힐링');
INSERT INTO "TB_CATEGORY" ("ac_name", "category")
VALUES ('럭셔리 빌라 투어', '럭셔리');
