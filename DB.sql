SET DEFINE OFF;

-- DROP TABLE Statements
DROP TABLE "TB_ROOM" CASCADE CONSTRAINTS;
DROP TABLE "TB_ROOM_BOOKING" CASCADE CONSTRAINTS;
DROP TABLE "TB_BUSINESS" CASCADE CONSTRAINTS;
DROP TABLE "TB_PICTURE" CASCADE CONSTRAINTS;
DROP TABLE "TB_MEMBER" CASCADE CONSTRAINTS;
DROP TABLE "TB_REVIEW" CASCADE CONSTRAINTS;
DROP TABLE "TB_TOUR_PICTURE" CASCADE CONSTRAINTS;
DROP TABLE "TB_TOUR" CASCADE CONSTRAINTS;
DROP TABLE "TB_WISHLIST" CASCADE CONSTRAINTS;
DROP TABLE "TB_RENTCAR" CASCADE CONSTRAINTS;
DROP TABLE "TB_CAR_BOOKING" CASCADE CONSTRAINTS;
DROP TABLE "TB_CATEGORY" CASCADE CONSTRAINTS;

-- CREATE TABLE Statements
CREATE TABLE "TB_ROOM" (
	"ROOM_NUM"	NUMBER		NOT NULL,
	"ROOM_MAX"	NUMBER		NOT NULL,
	"ROOM_NAME"	VARCHAR2(255)	NOT NULL,
	"ROOM_PRICE"	NUMBER		NOT NULL,
	"CHECKIN"	VARCHAR2(255)	NOT NULL,
	"CHECKOUT"	VARCHAR2(255)	NOT NULL,
	"ROOM_INFO"	VARCHAR2(255)	NOT NULL,
	"BU_ID"	VARCHAR2(255)	NOT NULL,
	PRIMARY KEY ("ROOM_NUM")
);

CREATE TABLE "TB_ROOM_BOOKING" (
	"BOOKING_NUM"	VARCHAR2(255)	NOT NULL,
	"ROOM_NUM"	NUMBER		NOT NULL,
	"EMAIL"	VARCHAR2(255)	NOT NULL,
	"CHECKIN"	DATE		NOT NULL,
	"CHECKOUT"	DATE		NOT NULL,
	"STATUS"	NUMBER		NOT NULL,
	"PAYMENT"	VARCHAR2(255)	NOT NULL,
	"PRICE"	VARCHAR2(255)	NOT NULL,
	"FIELD10"	VARCHAR2(255)	NOT NULL,
	PRIMARY KEY ("BOOKING_NUM")
);

drop table tb_category;


CREATE TABLE "TB_BUSINESS" (
	"BU_ID"	VARCHAR2(255)	NOT NULL,
	"EMAIL2"	VARCHAR2(255)	NOT NULL,
	"BU_TEL"	VARCHAR2(255)	NOT NULL,
	"BU_ADDRESS"	VARCHAR2(255)	NOT NULL,
	"BU_TITLE"	VARCHAR2(255)	NOT NULL,
	PRIMARY KEY ("BU_ID")
);

CREATE TABLE "TB_PICTURE" (
	"LOCATION"	VARCHAR2(255)	NOT NULL,
	"ROOM_NUM"	NUMBER		NULL,
	"BU_ID"	VARCHAR2(255)	NULL,
	PRIMARY KEY ("LOCATION")
);

CREATE TABLE "TB_MEMBER" (
	"EMAIL"	    VARCHAR2(255)	NOT NULL,
	"PASSWORD"	VARCHAR2(255)	NOT NULL,
	"TEL"	    VARCHAR2(255)	NOT NULL,
	"NAME"	    VARCHAR2(255)	NOT NULL,
    "USER_ID"   VARCHAR2(255)	NOT NULL,
    "USER_PWD"  VARCHAR2(255)	NOT NULL,
    "BIRTHDAY"  VARCHAR2(255),
    "GENDER"    VARCHAR2(2),
    "ENROLL_DATE" DATE,
    "MODIFY_DATE" DATE,
    "STATUS" VARCHAR2(2),
	PRIMARY KEY ("EMAIL")
);

CREATE TABLE "TB_REVIEW" (
	"REV_NUM"	NUMBER		NOT NULL,
	"EMAIL2"	VARCHAR2(255)	NOT NULL,
	"AC_NAME"	VARCHAR2(255)	NOT NULL,
	"CONTENT"	VARCHAR2(255)	NOT NULL,
	"REVIEW_DATE"	DATE		NOT NULL,
	"SCORE"	NUMBER		NOT NULL,
	PRIMARY KEY ("REV_NUM")
);

CREATE TABLE "TB_TOUR_PICTURE" (
	"LOCATION"	VARCHAR2(255)	NOT NULL,
	"AC_NAME"	VARCHAR2(255)	NOT NULL,
	PRIMARY KEY ("LOCATION")
);

CREATE TABLE "TB_TOUR" (
	"AC_NAME"	VARCHAR2(255)	NOT NULL,
	"AC_ADDRESS"	VARCHAR2(255)	NOT NULL,
	"TR_INFO"	VARCHAR2(4000)	NOT NULL,
	"ACT_ID"	VARCHAR2(255)	NOT NULL,
	"FIELD"	NUMBER		NOT NULL,
	PRIMARY KEY ("AC_NAME")
);

CREATE TABLE "TB_WISHLIST" (
	"AC_NAME"	VARCHAR2(255)	NOT NULL,
	"EMAIL"	VARCHAR2(255)	NOT NULL,
	PRIMARY KEY ("AC_NAME", "EMAIL")
);

CREATE TABLE "TB_RENTCAR" (
	"CAR_NUM"	VARCHAR2(255)	NOT NULL,
	"CAR_ID"	VARCHAR2(255)	NOT NULL,
	"CAR_NAME"	VARCHAR2(255)	NOT NULL,
	"CAR_PRICE"	NUMBER		NOT NULL,
	"CAR_INFO"	VARCHAR2(255)	NULL,
	PRIMARY KEY ("CAR_NUM")
);

CREATE TABLE "TB_CAR_BOOKING" (
	"CAR_NUM"	VARCHAR2(255)	NOT NULL,
	"CAR_RECIEVE_PLACE"	VARCHAR2(255)	NOT NULL,
	"CAR_RETURN_PLACE"	VARCHAR2(255)	NOT NULL,
	"CAR_TIME_START"	DATE		NOT NULL,
	"CAR_TIME_OVER"	DATE		NOT NULL,
	"EMAIL"	VARCHAR2(255)	NOT NULL,
	PRIMARY KEY ("CAR_NUM")
);

CREATE TABLE "TB_CATEGORY" (
	"AC_NAME"	VARCHAR2(255)	NOT NULL,
	"CATEGORY"	VARCHAR2(255)	NOT NULL,
	PRIMARY KEY ("AC_NAME", "CATEGORY")
);

INSERT INTO "TB_MEMBER" (EMAIL, PASSWORD, TEL, NAME, USER_ID, USER_PWD, BIRTHDAY, GENDER, ENROLL_DATE, MODIFY_DATE, STATUS)
VALUES 
('user1@example.com', '비밀번호123', '010-1234-5678', '사용자1', 'user1', '암호1', '1990-01-01', 'M', SYSDATE, SYSDATE, 'Y');
INSERT INTO "TB_MEMBER" (EMAIL, PASSWORD, TEL, NAME, USER_ID, USER_PWD, BIRTHDAY, GENDER, ENROLL_DATE, MODIFY_DATE, STATUS)
VALUES
('user2@example.com', '비밀번호456', '010-2345-6789', '사용자2', 'user2', '암호2', '1992-02-02', 'F', SYSDATE, SYSDATE, 'Y');
INSERT INTO "TB_MEMBER" (EMAIL, PASSWORD, TEL, NAME, USER_ID, USER_PWD, BIRTHDAY, GENDER, ENROLL_DATE, MODIFY_DATE, STATUS)
VALUES
('user3@example.com', '비밀번호789', '010-3456-7890', '사용자3', 'user3', '암호3', '1994-03-03', 'M', SYSDATE, SYSDATE, 'Y');


-- TB_ROOM 테이블에 데이터 삽입
-- 방 번호 1, 2, 3에 각각 다른 방 정보를 추가
INSERT INTO "TB_ROOM" ("ROOM_NUM", "ROOM_MAX", "ROOM_NAME", "ROOM_PRICE", "CHECKIN", "CHECKOUT", "ROOM_INFO", "BU_ID")
VALUES (1, 2, '오션뷰 스위트', 150000, '14:00', '12:00', '넓은 오션뷰 객실', 'B001');
INSERT INTO "TB_ROOM" ("ROOM_NUM", "ROOM_MAX", "ROOM_NAME", "ROOM_PRICE", "CHECKIN", "CHECKOUT", "ROOM_INFO", "BU_ID")
VALUES (2, 3, '산장', 120000, '15:00', '11:00', '아늑한 산장', 'B002');
INSERT INTO "TB_ROOM" ("ROOM_NUM", "ROOM_MAX", "ROOM_NAME", "ROOM_PRICE", "CHECKIN", "CHECKOUT", "ROOM_INFO", "BU_ID")
VALUES (3, 4, '럭셔리 빌라', 250000, '13:00', '11:00', '개인 수영장이 있는 럭셔리 빌라', 'B003');

-- TB_ROOM_BOOKING 테이블에 데이터 삽입
-- 예약 번호 3건에 대해 각각 다른 예약 정보를 추가
INSERT INTO "TB_ROOM_BOOKING" ("BOOKING_NUM", "ROOM_NUM", "EMAIL", "CHECKIN", "CHECKOUT", "STATUS", "PAYMENT", "PRICE", "FIELD10")
VALUES ('BKG001', 1, 'user1@example.com', TO_DATE('2024-09-20', 'YYYY-MM-DD'), TO_DATE('2024-09-22', 'YYYY-MM-DD'), 1, '카드', '150000', '메모');
INSERT INTO "TB_ROOM_BOOKING" ("BOOKING_NUM", "ROOM_NUM", "EMAIL", "CHECKIN", "CHECKOUT", "STATUS", "PAYMENT", "PRICE", "FIELD10")
VALUES ('BKG002', 2, 'user2@example.com', TO_DATE('2024-09-23', 'YYYY-MM-DD'), TO_DATE('2024-09-24', 'YYYY-MM-DD'), 1, '현금', '120000', '메모');
INSERT INTO "TB_ROOM_BOOKING" ("BOOKING_NUM", "ROOM_NUM", "EMAIL", "CHECKIN", "CHECKOUT", "STATUS", "PAYMENT", "PRICE", "FIELD10")
VALUES ('BKG003', 3, 'user3@example.com', TO_DATE('2024-09-25', 'YYYY-MM-DD'), TO_DATE('2024-09-27', 'YYYY-MM-DD'), 2, '카드', '250000', '메모');

-- TB_BUSINESS 테이블에 데이터 삽입
-- 사업체 3개의 정보를 추가
INSERT INTO "TB_BUSINESS" ("BU_ID", "EMAIL2", "BU_TEL", "BU_ADDRESS", "BU_TITLE")
VALUES ('B001', 'business1@example.com', '010-1234-5678', '서울시 강남구', '호텔 오션뷰');
INSERT INTO "TB_BUSINESS" ("BU_ID", "EMAIL2", "BU_TEL", "BU_ADDRESS", "BU_TITLE")
VALUES ('B002', 'business2@example.com', '010-2345-6789', '서울시 서초구', '산장 리조트');
INSERT INTO "TB_BUSINESS" ("BU_ID", "EMAIL2", "BU_TEL", "BU_ADDRESS", "BU_TITLE")
VALUES ('B003', 'business3@example.com', '010-3456-7890', '서울시 종로구', '럭셔리 빌라');

-- TB_PICTURE 테이블에 데이터 삽입
-- 각 사진의 위치와 관련된 방 또는 사업체 정보를 추가
INSERT INTO "TB_PICTURE" ("LOCATION", "ROOM_NUM", "BU_ID")
VALUES ('/images/oceanview.jpg', 1, 'B001');
INSERT INTO "TB_PICTURE" ("LOCATION", "ROOM_NUM", "BU_ID")
VALUES ('/images/mountain.jpg', 2, 'B002');
INSERT INTO "TB_PICTURE" ("LOCATION", "ROOM_NUM", "BU_ID")
VALUES ('/images/villa.jpg', 3, 'B003');

-- TB_MEMBER 테이블에 데이터 삽입
-- 3명의 회원 정보를 추가
INSERT INTO "TB_MEMBER" ("EMAIL", "PASSWORD", "TEL", "NAME")
VALUES ('user1@example.com', 'password123', '010-1111-2222', '홍길동');
INSERT INTO "TB_MEMBER" ("EMAIL", "PASSWORD", "TEL", "NAME")
VALUES ('user2@example.com', 'password234', '010-2222-3333', '이순신');
INSERT INTO "TB_MEMBER" ("EMAIL", "PASSWORD", "TEL", "NAME")
VALUES ('user3@example.com', 'password345', '010-3333-4444', '유관순');

-- TB_REVIEW 테이블에 데이터 삽입
-- 각 투어에 대한 리뷰 3건을 추가
INSERT INTO "TB_REVIEW" ("REV_NUM", "EMAIL2", "AC_NAME", "CONTENT", "REVIEW_DATE", "SCORE")
VALUES (1, 'user1@example.com', '오션뷰 투어', '정말 멋진 여행이었어요!', TO_DATE('2024-09-10', 'YYYY-MM-DD'), 5);
INSERT INTO "TB_REVIEW" ("REV_NUM", "EMAIL2", "AC_NAME", "CONTENT", "REVIEW_DATE", "SCORE")
VALUES (2, 'user2@example.com', '산장 투어', '자연이 너무 아름다웠어요.', TO_DATE('2024-09-12', 'YYYY-MM-DD'), 4);
INSERT INTO "TB_REVIEW" ("REV_NUM", "EMAIL2", "AC_NAME", "CONTENT", "REVIEW_DATE", "SCORE")
VALUES (3, 'user3@example.com', '럭셔리 빌라 투어', '최고의 서비스였어요!', TO_DATE('2024-09-15', 'YYYY-MM-DD'), 5);

-- TB_TOUR_PICTURE 테이블에 데이터 삽입
-- 투어와 관련된 사진 정보 3건 추가
INSERT INTO "TB_TOUR_PICTURE" ("LOCATION", "AC_NAME")
VALUES ('/tour/ocean.jpg', '오션뷰 투어');
INSERT INTO "TB_TOUR_PICTURE" ("LOCATION", "AC_NAME")
VALUES ('/tour/mountain.jpg', '산장 투어');
INSERT INTO "TB_TOUR_PICTURE" ("LOCATION", "AC_NAME")
VALUES ('/tour/villa.jpg', '럭셔리 빌라 투어');

-- TB_TOUR 테이블에 데이터 삽입
-- 3개의 투어 정보를 추가
INSERT INTO "TB_TOUR" ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD")
VALUES ('오션뷰 투어', '제주도 서귀포시', '바다를 보며 즐기는 투어', 101, 1);
INSERT INTO "TB_TOUR" ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD")
VALUES ('산장 투어', '강원도 평창군', '산 속에서 힐링하는 투어', 102, 2);
INSERT INTO "TB_TOUR" ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD")
VALUES ('럭셔리 빌라 투어', '경기도 가평군', '럭셔리한 휴양을 즐기는 투어', 103, 3);

-- TB_WISHLIST 테이블에 데이터 삽입
-- 3명의 사용자가 관심있는 투어를 추가
INSERT INTO "TB_WISHLIST" ("AC_NAME", "EMAIL")
VALUES ('오션뷰 투어', 'user1@example.com');
INSERT INTO "TB_WISHLIST" ("AC_NAME", "EMAIL")
VALUES ('산장 투어', 'user2@example.com');
INSERT INTO "TB_WISHLIST" ("AC_NAME", "EMAIL")
VALUES ('럭셔리 빌라 투어', 'user3@example.com');

-- TB_RENTCAR 테이블에 데이터 삽입
-- 렌트카 정보 3건 추가
INSERT INTO "TB_RENTCAR" ("CAR_NUM", "CAR_ID", "CAR_NAME", "CAR_PRICE", "CAR_INFO")
VALUES ('CAR001', 'R001', '쏘나타', 70000, '준중형 세단');
INSERT INTO "TB_RENTCAR" ("CAR_NUM", "CAR_ID", "CAR_NAME", "CAR_PRICE", "CAR_INFO")
VALUES ('CAR002', 'R002', '카니발', 120000, '대형 밴');
INSERT INTO "TB_RENTCAR" ("CAR_NUM", "CAR_ID", "CAR_NAME", "CAR_PRICE", "CAR_INFO")
VALUES ('CAR003', 'R003', '아반떼', 60000, '소형 세단');

-- TB_CAR_BOOKING 테이블에 데이터 삽입
-- 렌트카 예약 정보 3건 추가
INSERT INTO "TB_CAR_BOOKING" ("CAR_NUM", "CAR_RECIEVE_PLACE", "CAR_RETURN_PLACE", "CAR_TIME_START", "CAR_TIME_OVER", "EMAIL")
VALUES ('CAR001', '제주공항', '제주공항', TO_DATE('2024-09-20', 'YYYY-MM-DD'), TO_DATE('2024-09-22', 'YYYY-MM-DD'), 'user1@example.com');
INSERT INTO "TB_CAR_BOOKING" ("CAR_NUM", "CAR_RECIEVE_PLACE", "CAR_RETURN_PLACE", "CAR_TIME_START", "CAR_TIME_OVER", "EMAIL")
VALUES ('CAR002', '서울역', '서울역', TO_DATE('2024-09-23', 'YYYY-MM-DD'), TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'user2@example.com');
INSERT INTO "TB_CAR_BOOKING" ("CAR_NUM", "CAR_RECIEVE_PLACE", "CAR_RETURN_PLACE", "CAR_TIME_START", "CAR_TIME_OVER", "EMAIL")
VALUES ('CAR003', '김포공항', '김포공항', TO_DATE('2024-09-26', 'YYYY-MM-DD'), TO_DATE('2024-09-28', 'YYYY-MM-DD'), 'user3@example.com');

-- TB_CATEGORY 테이블에 데이터 삽입
-- 투어 카테고리 정보 3건 추가
INSERT INTO "TB_CATEGORY" ("AC_NAME", "CATEGORY")
VALUES ('오션뷰 투어', '자연');
INSERT INTO "TB_CATEGORY" ("AC_NAME", "CATEGORY")
VALUES ('산장 투어', '힐링');
INSERT INTO "TB_CATEGORY" ("AC_NAME", "CATEGORY")
VALUES ('럭셔리 빌라 투어', '럭셔리');

--TOUR 정보 입력

--행 56
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('곤지암리조트','경기도 광주시 도척면 도척윗로 278-1','곤지암리조트는 다양한 스타일의 부티크 호텔형 객실을 갖춘 콘도, 경기도 최대 규모의 스키장, 국내 최초로 선보이는 체류형 스파, 건강과 문화 중심의 차별화된 프로그램 등의 다양하고 독특한 시설을 갖춘 사계절 종합리조트이다. 중부고속도로 곤지암 IC에서 4Km 거리에 위치해 서울 강남에서 불과 40분 만에 도착한다는 점이 가장 큰 매력이기도 하다. 라스베이거스 시저스 팰리스(미국), The Palace of the Lost City(남아공), 제주 롯데호텔 등 리조트 디자인 분야에서 탁월함을 인정받고 있는 WAT&G(Wimberly Allison Tong & Goo)가 설계한 곤지암리조트는 북미 스타일의 이국적이고 차별화된 분위기를 느낄 수 있다.',N'액티비티',1);
--행 57
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('마당','경기도 광주시 신현로 21','마당은 경기도 광주 오포읍 신현리 태재고개 근처에 있는 함흥냉면 전문점이다. 넓은 잔디정원 앞으로 넓은 주차장이 있어 편하게 주차를 할 수 있다. 이곳은 한옥을 개조한 식당으로 정원을 걸어 들어가면 정면에 카페가 있고 왼쪽에 건물이 식당이다. 내부는 한옥의 멋을 그대로 살린 서까래가 노출되어 있어 답답함 없이 깔끔하고 넓으며 테이블이 정갈하게 정렬되어 있다. 정원 한쪽에 대기 손님을 위한 대기 공간이 있지만 회전율이 높아 오래 기다리지 않아도 된다. 또한 당일 식사 영수증을 지참하면 식당 옆 카페에서 음료를 할인 받을 수 있다.',N'맛집',1);
--행 58
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('경기광주 한옥마을','경기도 광주시 새오개길 39 (목현동)','400년이 넘은 충남 광천의 사대부 한옥을 그대로 옮겨 복원시켰다. 1000년 수령의 느티나무와 소나무들이 한옥과 어우러져 계절마다 새로운 옷을 갈아입는다. 수려한 자연 속에서 한옥의 고즈넉한 정취를 느끼며 삶의 여유를 느껴볼 수 있다. 아웃도어 바비큐, 원데이 클래스 문화강좌, 카페, 한옥스테이, 아기 돌 촬영 스튜디오 등가족, 자연 그리고 예술에 근간을 둔 프로그램을 운영 중이다.',N'여행지',1);
--행 59
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('수어장대','경기도 광주시 남한산성면 남한산성로 780번길 107-65','수어장대는 경기도 광주시 남한산성에 위치한 지휘와 관측을 위한 군사적 목적에서 지은 누각이다. 남한산성에 있던 5개의 장대 중 유일하게 남았으며, 성 안에 있는 건물 중 가장 화려하고 웅장하다. 1972년 5월 4일 경기도의 유형문화재로 지정되었다.
수어장대는 산성 안에서 최고봉인 일장산 꼭대기에 자리 잡고 있어서 성 내부와 인근 주변까지 바라볼 수 있다. 이곳은 병자호란(1636) 때 인조가 직접 군사를 지휘하여 청나라 태종의 군대와 45일간 대항하여 싸운 곳이기도 하다. 처음에는 1층 누각으로 짓고 서장대라 불렀으나, 영조 27년(1751)에 이기진이 왕의 명령으로 서장대 위에 2층 누각을 지었다. 건물의 바깥쪽 앞면에는 〔수어장대〕라는 현판이, 안쪽에는 〔무망루〕라는 현판이 걸려있는데, 〔무망루〕란 병자호란 때 인조가 겪은 시련과 아들 효종이 청나라에 대한 복수로 북쪽 땅을 빼앗으려다 실패하고 죽은 비통함을 잊지 말자는 뜻에서 붙인 이름이다.',N'여행지',1);
--행 60
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('경기도자박물관','경기도 광주시 곤지암읍 경충대로 727','* 조선 도자 전문 박물관, 경기도자박물관 *
광주 조선관요박물관은 조선시대 왕실이 운영하는 관요가 설치되어 400여 년간 운영되던 고장인 경기도 광주시에 위치하고 있다. 조선백자를 연구하고 조선 관요 유적의 발굴과 학술연구사업, 전통 도자문화 교육 등 한국 전통도자를 연구하는 전문 도자박물관이다. 한국 전통 도자기의 육성·발전을 위하여 ''아름다운 우리 도자기전'' 이라는 전통 도자공모전을 격년제로 개최하며, 이를 통해 오늘의 한국적 특성에 맞는 아름다운 우리 도자기를 선보이게 될 것이다. 2개의 대형 전시실과 기획전시실, 다목적실 등으로 이루어져 있으며 대규모의 야외 조각 공원과 장작가마, 한국정원, 다례시연장 및 광주지역에서 생산되는 도자기를 판매하는 도자쇼핑몰 등의 부대시설을 갖추고 있다. 광주 조선관요박물관은 조선 500년의 역사를 이어온 순백자, 청화백자, 철화백자, 분청사기 등 조선시대 관요에서 생산된 전통도자기와 그 전통을 계승하는 현대작가들의 작품들을 상설 전시하며 우리의 전통 도자문화와 역사를 조명하는 기획 전시·특별전시를 통해 살아 숨 쉬는 우리의 도자전통을 느끼게 해 줄 것이다.

* 도자의 다양한 정보를 만난다 *
경기도자박물관은 전시실은 2층으로 이루어져 있으며, 1층에는 도자문화실과 기획전시실, 2층에는 상설전시실이 운영 중이다. 도자문화실은 관람자에게 도자개념, 역사, 기법 등 지식과 정보를 제공하고 있으며, 경기도자박물관에서는 국내외 도자의 역사와 전통을 테마별로 조명하는 기획전시를 연중 2회 이상 실시하고 있다. 1층 기획전시실은 물론 2층 상실전시실 등 다양한 공간을 활용하여 개최되는 기획전시를 통해 상설전에서 볼 수 없는 새로운 볼거리와 학습자료를 제공한다. 상설전시실은 제1실과 제2실로 나뉘는데 제1실에서는 한반도 자기문화의 발전과정을 한눈에 살펴 볼 수 있으며, 상설전시 제2실에서는 한국도자의 미래발전방향을 제시한 도예작들의 작품을 감상할 수 있다.',N'여행지',1);
--행 61
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('일본군''위안부''역사관','경기도 광주시 퇴촌면 가새골길 85','일본군 위안부 역사관은 경기도 광주시 소재의 세계 최초 성 노예 테마 인권 박물관이다. 경기도 광주 퇴촌 〔나눔의 집〕 부설 일본군 위안부 역사관은 일본의 전쟁범죄를 고발하고 피해 할머니들의 명예를 회복시키면서 역사교육의 장으로 활용할 목적으로 1998년 8월 14일 개관했다. 지상 2층, 지하 1층 건물로 제1역사관, 제2역사관, 추모관 등이 구성되어 있다.
제1역사관은 총 5개의 전시공간으로 이루어져 있다. 각각 역사의 장, 증언의 장, 체험의 장, 기록의 장, 고발의 장의 테마로 구성되었으며, 특히 제3전시공간인 체험의 장에서는 당시 피해자의 방이 재현되어 있어 그때의 아픔이 고스란히 전해오는 전율을 느끼게 한다. 제4전시공간인 기록의 장에서는 김학순 할머니의 1991년 육성 증언을 들을 수 있다. 외부 전시공간은 피해자 할머니들이 흉상이 전시되어 있으며, 역사관 외부 중앙 야외 공연장은 다양한 행사가 개최되는 공간으로 활용되고 있다.
지상 2층의 제2역사관은 일본군 성 노예 피해 역사를 보여주는 〔기억과 기록〕의 전시관으로 조성되었다. 피해 할머니들을 기억하기 위한 유품 전시장과 나눔의 집에서 보유하고 있는 할머니들의 그림 300여 점 중 200여 점을 선정하여 전시한 그림 전시장을 둘러볼 수 있다. 역사관 2층에는 추모관이 마련되어 있어 이곳을 방문한 사람들이 피해 할머니들을 기억하고 추모할 수 있도록 하였다. 제2역사관 뒤 편에는 피해 할머니들의 넋을 기리는 추모공원이 조성되어 있다. 추모공원에는 살아생전 고향땅을 밟아보지 못하고 돌아가신 할머니들의 넋이 노랑나비가 되어 귀향한 듯, 노란 포스트잇을 채운 추모의 글들이 벽면을 가득 채우고 있다.',N'여행지',1);
--행 62
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('곤지암생활체육공원','경기도 광주시 곤지암읍 평촌길 12-137','종합 체육시설로 축구장, 테니스장, 농구장 등을 갖추고 있어 다양한 체육활동이 가능하다. 인조잔디가 깔린 축구장 2면, 테니스장 3면, 농구장 1면, 씨름장, 족구 및 배드민턴장 1면이 마련되어 있고, 야간 조명시설도 갖추어져 있어 지역주민들이 손쉽게 운동하며 휴식을 취할 수 있는 공간이다.',N'여행지',1);
--행 63
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('서핑라이더 분당점','경기도 광주시 오포읍 능평로 116-21','경기도 광주시 오포읍에 위치한 실내 서핑장으로 분당과 지리적으로 가까워 흔히 분당점으로 불린다. 바디 보드와 스탠딩 보드로 나뉘는데 동시간대 14명만 이용할 수 있어 사전예약이 필수다. 초보자는 2시간으로 예약하여 강습을 받아야 하고, 미취학 아동일 경우 보호자 한 명과 동반 강습을 받아야 한다. 처음인 이용객은 초보 과정인 Bodyboard만 가능하다. 강습과 강사 없이 이용하는 21시 이후는 초보자는 입장할 수 없다. 수영복, 세면도구, 수건은 개인이 지참해야 한다.',N'액티비티',1);
--행 64
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('팀업캠퍼스','경기도 광주시 곤지암읍 경충대로 729','Team Up Campus는 경기도 광주시 곤지암읍 외곽에 위치한 스포츠 파크이다. 국내 최초로 생활 스포츠 공간과 남녀노소 모두가 함께 즐길 수 있는 레저 및 오락 시설을 융합한 새로운 개념의 스포테인먼트 공간이다. 야구장, 축구장, 캠핑장 , 세미나실 등 다양한 시설을 보유하고 있어 특별한 행사 진행에 적합한 장소이다.',N'액티비티',1);
--행 65
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('한국민속촌 살귀옥, A Haunted Prison','경기도 용인시 기흥구 민속촌로 90 한국민속촌','‘살귀옥’은 무당 이화가 장악한 신당골이 귀굴로 변한 지 5년째 되는 해, 신당골 고갯마루에 악귀에 빙의된 살귀들이 살고 있다는 소문으로 시작된다. 소문 속 살귀들의 정체를 밝히기 위해 체험자들은 퇴마술사가 돼 살귀들의 세상으로 들어가지만, 도망칠 수 없는 극한의 공포를 경험할 수 있다.

체험코스는 총 8개로 나뉘며, 체험 진행에는 15분 정도가 소요된다. 체험자들은 내자원 뒤의 피가 묻어있는 길로 상상력을 자극하는 심리적 공포를 안고 출발한다. 약 400m의 국내 최장 야외코스에서는 덫을 놓아 사람을 사냥하는 등 기괴한 공간 연출로 무언가 나타날 것 같은 두려움을 느낄 수 있다. 지하로 내려가는 미로 구간에서는 문을 열어야만 나아갈 수 있어 극악의 공포를 느끼게 된다.

일부 구간은 도망칠수록 갇혔다는 공포 때문에 폐쇄공포증이 유발될 수 있어 주의가 필요하다.

‘살귀옥’은 전작의 공포체험보다 공포 수위가 높아 만 13세 이상부터 체험할 수 있으며, 노약자, 임산부, 심장질환자는 참여할 수 없다. 체험코스 마지막 구간에서는 직접 금줄을 만들어 살귀들을 봉인하는 이벤트에 참여하고 리워드도 받아 갈 수 있다.',N'축제',1);
--행 66
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('한국민속촌 조선살인수사','경기도 용인시 기흥구 민속촌로 90 한국민속촌','관람객이 직접 살인사건을 추리하는 추리 콘텐츠 ‘조선살인수사’를 11월 10일까지 금·토·일 및 공휴일 간 진행한다. ‘조선시대 살인사건’을 주제로 하는 이 콘텐츠는 관람객이 직접 암행어사가 되어 조선시대 살인사건의 범인을 찾아야 한다. 사또가 풀지 못한 살인사건 속 살해 방법을 찾아 사건의 범인을 추리하는 콘텐츠이다.',N'축제',1);
--행 67
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('게임문화축제','경기도 용인시 처인구 포곡읍 에버랜드로 199 에버랜드','게임을 매개로 모든 세대가 소통할 수 있는 건강한 게임문화의 확산과 게임 향유 기회 확대를 위해 진행되는 축제이다. 호탐이 스토리텔링을 기반으로 한 미션게임, 전시 및 체험, 이스포츠 대회 등 관람객 누구나 함께 참여할 수 있는 다양한 현장 프로그램이 운영된다.',N'축제',1);
--행 68
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('용인사이버과학축제','경기도 용인시 처인구 동백죽전대로 61 (삼가동)','용인특례시는 2001년부터 정보·과학 문화 확산을 위해 디지털·과학 기술을 손쉽게 즐길 수 있는 「용인사이버과학축제」를 개최하고 있다. 2024년 「용인사이버과학축제」의 부제인 ""용인의 비밀기지! 모두의 놀이터""는 ''비밀기지''에서 연상되는 미래 과학기술을 ''놀이터''와 같은 즐거운 공간에서 누구나 손쉽게 즐길 수 있다는 의미를 갖고 있다. ''과학놀이터''에서는 과학방탈출, VR, 드론 등 최신 과학기술을 체험할 수 있으며, ''용인놀이터''에서는 관내 IT/과학 관련 기업과 기관의 각종 콘텐츠를 체험할 수 있다. 또한 ''탐구놀이터''에서는 또래 학생·청소년과 관내 대학선배들이 IT/과학 체험들을 마련했고 행사에서 준비한 나만의 직업찾기 체험에도 참여할 수 있다. ''지식즐김터''에는 과학실험쇼, 매직버블쇼, 과학토크쇼를 운영하며 과학퀴즈 마라톤, 도전! AI 골든벨 등의 프로그램에 참여할 수 있다. 또한 용인시 공식캐릭터인 ''조아용'', 대형로봇 코스튬 ''아트봇'' 등과 시간을 보낼 수도 있다.',N'축제',1);
--행 69
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('포은문화제','경기도 용인시 처인구 모현면 능곡로 45','용인문화원은 포은 정몽주 선생의 충절과 학덕을 기리고 선현들의 지고한 정신문화를 계승하고자 매년 포은문화제를 개최하고 있으며 올해로 20회를 맞는다. 이번 문화제의 메인 슬로건은 ‘전통을 품고, 미래를 잇다’로, 전통과 현대의 조화를 이루는 다양한 프로그램을 선보일 예정이다.
올해 포은문화제 볼거리 프로그램으로는 조선시대 국장행렬의 장엄함을 경험할 수 있는 전국 유일의 퍼레이드 ''천장행렬''과 도예 명장 마순관 및 용인 마지막 대장장이 김영환의 퍼포먼스가 준비되어 있다. 또한, 역대 한시대회 수상작을 활용한 특별전시와 정영주 뮤지컬배우, K-POP 보이그룹 ‘더스틴’의 축하공연으로 알찬 공연 프로그램이 관람객들을 맞이할 예정이다. 이 외에도, 용인의 로컬 전통주와 농특산물 그리고 다양한 먹거리 푸드트럭도 함께 준비된다. 즐길거리 체험 프로그램으로는 지난해 큰 인기를 끌었던 포은스쿨이 시즌2 수학여행편을 새롭게 선보이며, 대나무를 활용한 만들기 체험, 탁본체험, 관혼상제 체험 등 다채로운 체험부스가 마련된다. 관람객들은 다양한 체험을 통해 전통문화를 직접 느끼고 참여할 수 있다.',N'축제',1);
--행 70
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('그린웨일','경기도 용인시 처인구 이동읍 어진로 771','용인 이동저수지에 맞닿은 베이커리 카페이다. 인기 음료메뉴는 브라운아인슈페너, 인절미라떼 등이 있고, 인기 베이커리 메뉴는 초당옥수수페스츄리, 레몬치즈 케이크 등이 있다. 뷰 맛집인 카페로 유명한데, 특히 용인 8경 중 어비낙조를 볼 수 있는 카페로서 카페 매장에서 이동저수지 뒤로 넘아가는 일몰을 감상할 수 있다. 야외석도 있어 이동저수지 옆에 앉아 음료와 디저트를 즐기며 물멍하기에 좋다 .',N'맛집',1);
--행 71
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('라임그라스','경기도 용인시 처인구 양지면 한터로 529-9','LIME GRASS는 40년 역사 익스테리어 전문회사 LIME PLACE가 인허가 관련한 부분부터 토목, 조경까지 전반적인 부분을 직접 설계 시공한 복합문화공간이다. 심플하면서도 간결한 외관 디자인과 4,000여 평의 큰 규모로, 방문객들로 하여금 숲속에 온 듯한 느낌을 받을 수 있도록 설계되었다. 다양한 마감재와 시설문, 감성적인 식재로 편히 쉴 수 있는 공간을 마련해 편히 쉬다 갈 수 있는 곳이다.',N'맛집',1);
--행 72
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('한국민속촌','경기도 용인시 기흥구 민속촌로 90 (보라동)','한국민속촌은 오랜 시간을 거쳐 전승되어 온 우리 문화 속 생활풍속을 한데 모아 내외국인 관광객에게 우리의 전통문화를 소개하기 위해 1974년에 설립되었다. 높은 교육적 가치와 관광적 가치를 지닌 한국민속촌은 설립 이후부터 지금까지 생생한 문화체험과 아름다운 자연 속의 전통문화 관광지로서 사랑받고 있다. 웰컴 투 조선, 추억의 그때 그 놀이 등 전통을 재해석해 만들어진 다양한 테마와 콘셉트의 시즌 축제가 특별한 즐거움을 선사한다.',N'여행지',1);
--행 73
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('용담낚시터','경기도 용인시 처인구 원삼면 원양로 382-2','용담생태습지원 부근에 위치한 용담낚시터는 바닥(올림) 전용 낚시터이다. 경치가 좋고 꾸준한 낚시터 관리로 수질이 깨끗하기로 소문나 많은 낚시꾼들이 모여든다. 용담저수지는 1978년에 야산 계곡을 막아 만들어진 6만㎡(수면적 약 12만 평) 규모의 평지형 저수지로, 마을 이름을 따라 [사암지]라고도 불려서 사암지낚시터라고도 한다. 평균 1~4m의 수심으로 전역에 마름 수초가 밀생해 있다. 용담낚시터는 연안 접지좌대와 잔교좌대, 총 32개의 방갈로형 수상좌대 등 다양한 좌대 옵션을 보유하고 있으며 수상좌대는 1인용부터 3인용까지 선택할 수 있고, 무더운 여름 에어컨을 쐬며 낚시를 즐기는 일명 황제낚시가 가능하다. 또 200여 개의 연안 접지좌대는 정해진 규격의 낚시 텐트 및 파라솔 설치가 가능하다. 낚시터에는 토종 붕어 위주로 운영하나 자연적으로 서식하는 잡어도 함께 잡힌다.
매점에서 간단한 음료와 비품 정도만 판매하고 식당은 운영하지 않으며, 외부 식당에 연락하면 좌대와 노지 포인트로 배달해 준다. 용담낚시터를 주 무대로 활동하는 낚시 동호회 카페 [어락실]이 있고, 용담저수지 주변으로 태교둘레길과 용담생태습지원, 음식점과 카페들이 들어서 있다.
양지IC에서 차량으로 약 10분 소요된다. 인근에 에버랜드, 한국민속촌, 세계문화유산 수원화성과 융건릉, 덕평공룡수목원, 별빛정원우주, 한택식물원 등이 있다.',N'액티비티',1);
--행 74
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('에버랜드','경기도 용인시 처인구 포곡읍 에버랜드로 199 (포곡읍)','1년 365일, 계절별 다채롭게 펼쳐지는 축제와 어트랙션, 동물, 식물 등 다양한 시설로 즐거운 휴식과 기쁨을 선사하는 테마파크이다. 5개 테마존의 40여 종의 최신 어트랙션은 짜릿한 스릴을 선사하며 특히 우든코스터 T Express는 롤러코스터 마니아들에게 사랑받고 있다. 파크 곳곳에서 펼쳐지는 다양한 무대공연, 멀티미디어 불꽃쇼 등 초대형 엔터테인먼트가 날마다 새로운 즐거움을 더하며, 아시아 동물원 최초로 AZA (미국 동물원 수족관협회) 인증을 받은 에버랜드 동물원 ‘주토피아’에서는 사파리월드, 로스트밸리 등 수준 높은 동물 생태 전시를 경험할 수 있다. 또한 40여 년간 한국의 꽃 축제와 정원 문화를 선도해 온 에버랜드에서 튤립, 장미 등 아름다운 테마정원과 오감만족의 전시, 체험도 만나볼 수 있다.',N'액티비티',1);
--행 75
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('한택식물원','경기도 용인시 처인구 백암면 한택로 2','재단법인 ‘한택식물원’은 1979년 설립이래 20만평의 규모에 자생식물 2,400종과 7,300종의 외래식물 등 1만여 종, 총 730여만본의 식물을 보유한 국내 최대의 종합식물원이다. 다양한 국내외 식물종의 보유와 더불어 식물연구소를 통한 체계적인 연구활동, 국내외 식물원과의 상호교류, 현대화된 시설 등을 갖추고 있다. 또한, 환경부로부터 <희귀?멸종위기식물 서식지 외 보전기관> 지정을 받아 우리나리의 자생식물을 보전하고 자생지를 복원하는 사업을 계속적으로 추진해오고 있으며, 자연을 배울 수 있는 다양한 체험 및 전시 등을 진행하고 있다.
한택식물원은 자연생태원, 수생식물원, 월가든 암석원, 억새원 등 자연환경에 맞게 구성한 아름다운 정원과 다양한 식물품종을 전시한 원추리원, 비비추원, 아이리스원 등이 있으며, 어린왕자에서 볼 수 있었던 바오밥나무가 있는 호주온실과 남아프리카온실, 허브식충식물온실, 편안한 휴식과 여유를 느낄 수 있는 잔디화단, 쉼터 등 서른 여섯가지의 색다른 정원을 갖추고 있다.',N'여행지',1);
--행 76
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('써닝포인트CC','경기도 용인시 처인구 백암면 고안로51번길 205','골프는 사랑하는 모든 사람을 회원으로 하는 프리미엄 퍼블릭 골프장이다. 써닝포인트 Sunning Point라는 이름이 나타내듯이 사계절 언제나 따스한 햇살과 시원한 바람을 만끽하며 골프를 즐길 수 있다. 용인시 백암면의 1,322,314㎡(40만 평) 부지 위에, 18개 홀(전홀 라이트 설치)이 울창한 수목과 화사한 화초의 아름다움과 어우러져 각각의 개성을 뽐내며 남북으로 시원스럽게 펼쳐져 있다.',N'액티비티',1);
--행 77
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('보정동카페거리','경기도 용인시 기흥구 보정동','경기도 용인시 기흥구 보정동에 자리 잡은 ‘보정동카페거리’는 사각형 형태의 주택가 골목을 따라 예쁜 카페들이 생겨나면서 인기를 얻고 있다. 보정동카페거리는 자연과 어우러진 골목에 외국의 자그마한 어느 마을에 온 듯 매우 독특하고 이국적인 모습이 인상적이다. 특색 있는 인테리어에 밝고 선명한 색의 벽과 창문에 귀여운 일러스트를 그려놓는 등 장식도 다양하다. 이 거리에서 오래된 북 카페 ‘에코의 서재’를 비롯해 새로운 예쁜 카페와 레스토랑, 옷가게 등 작지만 독창적인 분위기의 카페들이 끊임없이 생겨나고 있다. 거리에는 차도 다니지 않고 나무도 많아 아늑한 분위기의 카페에서 와플(Waffle)이나 크레페(Crepe) 등 브런치를 즐기면서 여유를 만끽할 수 있어 친구, 연인, 가족과 함께 산책이나 데이트를 즐기기에 좋다. 특히, 용인 단국대학교 죽전캠퍼스 인근에 위치한 죽전 카페거리는 ‘문화의 거리축제’와 같은 대학축제를 비롯해 졸업전시회와 각종 문화행사 등 문화예술 특화거리로도 조성하고 있다.',N'맛집',1);
--행 78
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('한터 조랑말 농장','경기도 용인시 처인구 대대로 110 한터조랑말목장','농촌학습체험장인 한터자랑말농장에서는 농작물을 직접 심어보고, 동물을 만져보고, 타보고, 또 흙을 밟아봄으로써 자연과 멀어져 가는 우리 아이들에게 자연의 소중함을 일깨워주고 꿈을 심어주는 체험학습 농장이다. 평일에는 유치원 및 초등학교 단체 전문 체험학습 농장으로 운영되며, 주말에는 가족나들이 체험농장으로 사랑을 받고 있다.',N'여행지',1);
--행 79
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('용인 곤충테마파크','경기도 용인시 처인구 백암면 삼백로835번길 20-13','용인곤충테마파크는 2012년 설립된 곳으로 사람과 곤충의 공존을 생각하 게하고, 귀한 생물자원으로서 곤충의 가치를 배운다. 우리가 몰랐던 ‘곤충에 대한 새로운 생각’ 다양한 곤충 전시와 흥미로운 체험 프로그램으로 자연과 친해질 수 있는 곳이다.',N'여행지',1);
--행 80
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('용인 대장금파크','경기도 용인시 처인구 백암면 용천드라마길 25','‘용인대장금파크’는 우리나라 최대 규모의 오픈 세트장이다. 꼼꼼한 고증을 통해 삼국시대에서 조선시대까지 시대별 거리와 집들을 재현하였다. 사극뿐 아니라 현대극, 영화, CF 촬영이 활발히 이루어지고 있으며 <주몽>, <이산>, <동이>, <역적>, <군주> 등 다수의 MBC 사극을 촬영 한 곳이기도 하다. 세트장 관람과 궁중의상 체험이 흥미로워 한류팬들의 발길이 이어지고 있다. 가장 인기가 많은 곳은 대장금 기념 세트장이다. 드라마 <대장금>의 주요 장면들을 재현해 놓은 곳으로 드라마 속 장면들을 떠올리며 기념사진을 찍기 좋다. 이곳에는 해를 품은 달 테마 카페가 있어 드라마 속 소품들로 꾸며진 인테리어와 다양한 음료, 간식도 즐길 수 있다.',N'여행지',1);
--행 81
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('용인어린이상상의숲','경기도 용인시 처인구 동백죽전대로 61 (삼가동)','요인시민체육공원 내에 위치하고 있는 용인어린이상상의숲은 세상의 모든 어린이들이 마음껏 문화예술로 상상하고 뛰어 놀 수 있는 어린이 문화공간이다. 1층에서는 어린이들의 생각을 마음껏 다양한 방식으로 확장할 수 있는 놀이터가 조성되어 있고, 지하 2층에서는 아이들의 생각에 깊이를 더해주는 예술 교육 프로그램들이 마련되어 있다.',N'여행지',1);
--행 82
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('다이노스타 (용인)','경기도 용인시 수지구 동천로 581','다이노스타는 아이들이 좋아하는 공룡을 테마로 만든 테마파크이다.시설 곳곳에 전시되어 있는 공룡들로 아이들의 흥미와 호기심을 유발시키며 자연속에서 놀이를 즐길 수 있다. 다이노 어드벤쳐 다이노 포레스트로 구성된 놀이 시설 중 실외 놀이 시설이 모여있는 다이노 포레스트는 다이노 클라이밍, 다이노 네트, 다이노 골프 등 다른 시설에서 즐길 수 없는 다이나믹한 놀이 시설로 구성되어 있다.',N'액티비티',1);
--행 83
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('더커피빌리지','경기도 용인시 처인구 오산로 45-49','더커피빌리지는 경기도 용인시 처인구 모현읍에 있는 프리미엄 대형 브런치 베이커리 카페이다. 커피와 다양한 베이커리를 비롯한 브런치, 스테이크 등 다양한 유기농 식사 메뉴도 있다. 이곳에선 이스트를 쓰지 않고 유기농 재료로 만든 천연 발효종 빵과 국내 유기농 인증을 통과한 커피만 엄선해 판매한다. 예쁜 정원을 갖추고 있으며 특히 2층엔 넓은 통창 뷰의 근사한 자리들이 즐비하다. 반려동물 동반도 가능하고 100대 이상 주차할 수 있는 넓은 주차장을 갖추고 있다. 각종 부대행사 및 클래식 공연, 그랜드 피아노를 이용한 발표회, 세미나, 스몰웨딩 등의 목적으로 대관도 할 수 있다.',N'맛집',1);
--행 84
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('플라이스테이션','경기도 용인시 처인구 포곡읍 성산로 521','플라이스테이션에서는 누구나 쉽고 안전하게 실내스카이다이빙을 경험하면서 상상하지 못한 새로운 즐거움과 일상의 부담감과 중압감에서 벗어나 자유로운 순간을 선물 해준다. 몸에 아무런 장치 없이 전문코치와 1:1로 공중으로 떠오르며 온 몸으로 짜릿함을 느낄 수 있으며, 가족, 연인, 친구 모두 함께 즐기는 이색 레저 스포츠이다. 실내스카이다이빙은 윈드터널에서 최대 시속 360km로 즐기는 이색 레저 스포츠로 사람의 체격에 맞게 바람 속도를 조정하여 안전하게 플라잉이 가능하다.',N'액티비티',1);
--행 85
INSERT INTO TB_TOUR ("AC_NAME", "AC_ADDRESS", "TR_INFO", "ACT_ID", "FIELD") VALUES ('법륜사','경기도 용인시 처인구 원삼면 농촌파크로 126','법륜사는 관세음보살의 현몽으로 창건한 관음성지 발원기도 도량으로 비구니 사찰이다. 대한불교조계종 제7교구 본사인 수덕사의 말사이자 경기도 전통사찰로 지정되었다. 1996년 서울 삼각산 승가사 주지로 있던 비구니 상륜스님이 새벽 입선 정진 중 관세음보살을 현몽하고 그로부터 10년 뒤인 2005년 용인시 문수산 자락에 법륜사를 창건하였다. 지형이 연꽃이 아름답게 핀 곳에서 선인들이 고요히 명상에 잠겨있는 형국이라 하여 ‘연화 반지 선인 단좌형’이라고 한다.
사찰 건립 시 백두산 홍송과 금강송이 사용되었고 최고 품질의 화강암인 익산 황등석이 사용되었는데, 조금은 이색적으로 느낄 수 있는 화려한 외관과 웅장한 크기를 자랑하고 있어 눈길을 사로잡는다. 경내에는 대웅전을 중심으로 극락보전, 관음전, 조사전, 삼성각, 범종각, 용수각, 적묵당, 요사채, 연화지 등의 당우를 갖추었다. 특히 대웅전 본존불은 석굴암 부처의 세 배에 달하는 53톤 중량의 석가모니불로 좌우에는 33톤 규모의 문수보살과 보현보살상을 모시고 있는데 모두 석조로 조성하여 그 규모와 예술성이 뛰어나다.
법륜사는 휴식형, 체험형, 수행형, 어린이 겨울수련회 등 다양한 템플스테이 프로그램을 운영하고 있다. 또한 불교대학과 평온한 분위기 속에 차를 마실 수 있는 여여카페도 운영하고 있다.법륜사는 관세음보살의 현몽으로 창건한 관음성지 발원기도 도량으로 비구니 사찰이다. 대한불교조계종 제7교구 본사인 수덕사의 말사이자 경기도 전통사찰로 지정되었다. 1996년 서울 삼각산 승가사 주지로 있던 비구니 상륜스님이 새벽 입선 정진 중 관세음보살을 현몽하고 그로부터 10년 뒤인 2005년 용인시 문수산 자락에 법륜사를 창건하였다. 지형이 연꽃이 아름답게 핀 곳에서 선인들이 고요히 명상에 잠겨있는 형국이라 하여 ‘연화 반지 선인 단좌형’이라고 한다.
사찰 건립 시 백두산 홍송과 금강송이 사용되었고 최고 품질의 화강암인 익산 황등석이 사용되었는데, 조금은 이색적으로 느낄 수 있는 화려한 외관과 웅장한 크기를 자랑하고 있어 눈길을 사로잡는다. 경내에는 대웅전을 중심으로 극락보전, 관음전, 조사전, 삼성각, 범종각, 용수각, 적묵당, 요사채, 연화지 등의 당우를 갖추었다. 특히 대웅전 본존불은 석굴암 부처의 세 배에 달하는 53톤 중량의 석가모니불로 좌우에는 33톤 규모의 문수보살과 보현보살상을 모시고 있는데 모두 석조로 조성하여 그 규모와 예술성이 뛰어나다.
법륜사는 휴식형, 체험형, 수행형, 어린이 겨울수련회 등 다양한 템플스테이 프로그램을 운영하고 있다. 또한 불교대학과 평온한 분위기 속에 차를 마실 수 있는 여여카페도 운영하고 있다.',N'여행지',1);


-- ALTER TABLE Statements (Constraints)
ALTER TABLE "TB_ROOM" ADD CONSTRAINT "FK_TB_BUSINESS_TO_TB_ROOM" FOREIGN KEY ("BU_ID") REFERENCES "TB_BUSINESS" ("BU_ID");

ALTER TABLE "TB_ROOM_BOOKING" ADD CONSTRAINT "FK_TB_ROOM_TO_TB_ROOM_BOOKING" FOREIGN KEY ("ROOM_NUM") REFERENCES "TB_ROOM" ("ROOM_NUM");
ALTER TABLE "TB_ROOM_BOOKING" ADD CONSTRAINT "FK_TB_MEMBER_TO_TB_ROOM_BOOKING" FOREIGN KEY ("EMAIL") REFERENCES "TB_MEMBER" ("EMAIL");

ALTER TABLE "TB_BUSINESS" ADD CONSTRAINT "FK_TB_MEMBER_TO_TB_BUSINESS" FOREIGN KEY ("EMAIL2") REFERENCES "TB_MEMBER" ("EMAIL");

ALTER TABLE "TB_PICTURE" ADD CONSTRAINT "FK_TB_ROOM_TO_TB_PICTURE" FOREIGN KEY ("ROOM_NUM") REFERENCES "TB_ROOM" ("ROOM_NUM");
ALTER TABLE "TB_PICTURE" ADD CONSTRAINT "FK_TB_BUSINESS_TO_TB_PICTURE" FOREIGN KEY ("BU_ID") REFERENCES "TB_BUSINESS" ("BU_ID");

ALTER TABLE "TB_REVIEW" ADD CONSTRAINT "FK_TB_MEMBER_TO_TB_REVIEW" FOREIGN KEY ("EMAIL2") REFERENCES "TB_MEMBER" ("EMAIL");
ALTER TABLE "TB_REVIEW" ADD CONSTRAINT "FK_TB_TOUR_TO_TB_REVIEW" FOREIGN KEY ("AC_NAME") REFERENCES "TB_TOUR" ("AC_NAME");

ALTER TABLE "TB_TOUR_PICTURE" ADD CONSTRAINT "FK_TB_TOUR_TO_TB_TOUR_PICTURE" FOREIGN KEY ("AC_NAME") REFERENCES "TB_TOUR" ("AC_NAME");

ALTER TABLE "TB_WISHLIST" ADD CONSTRAINT "FK_TB_TOUR_TO_TB_WISHLIST" FOREIGN KEY ("AC_NAME") REFERENCES "TB_TOUR" ("AC_NAME");
ALTER TABLE "TB_WISHLIST" ADD CONSTRAINT "FK_TB_MEMBER_TO_TB_WISHLIST" FOREIGN KEY ("EMAIL") REFERENCES "TB_MEMBER" ("EMAIL");

ALTER TABLE "TB_CAR_BOOKING" ADD CONSTRAINT "FK_TB_RENTCAR_TO_TB_CAR_BOOKING" FOREIGN KEY ("CAR_NUM") REFERENCES "TB_RENTCAR" ("CAR_NUM");
ALTER TABLE "TB_CAR_BOOKING" ADD CONSTRAINT "FK_TB_MEMBER_TO_TB_CAR_BOOKING" FOREIGN KEY ("EMAIL") REFERENCES "TB_MEMBER" ("EMAIL");

ALTER TABLE "TB_CATEGORY" ADD CONSTRAINT "FK_TB_TOUR_TO_TB_CATEGORY" FOREIGN KEY ("AC_NAME") REFERENCES "TB_TOUR" ("AC_NAME");
