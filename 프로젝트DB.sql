--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-21-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADDRESS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADDRESS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 31 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence AD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ESTIMATE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ESTIMATE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 29 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence HAIRSTYLIST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HAIRSTYLIST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 31 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PAY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PAY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 48 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 18 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TRAINER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRAINER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AD
--------------------------------------------------------

  CREATE TABLE "AD" 
   (	"AD_NO" NUMBER, 
	"AD_IMG" VARCHAR2(1000 BYTE), 
	"AD_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table ADDRESS
--------------------------------------------------------

  CREATE TABLE "ADDRESS" 
   (	"A_NO" NUMBER, 
	"M_NO" NUMBER, 
	"A_ROAD" VARCHAR2(150 BYTE), 
	"A_DETAILS" VARCHAR2(150 BYTE), 
	"A_ZONECODE" NUMBER, 
	"A_NAME" VARCHAR2(150 BYTE), 
	"A_ADDR" VARCHAR2(1000 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH
--------------------------------------------------------

  CREATE TABLE "AUTH" 
   (	"M_NO" NUMBER, 
	"AUTH" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table DOG
--------------------------------------------------------

  CREATE TABLE "DOG" 
   (	"D_NO" NUMBER, 
	"M_NO" NUMBER, 
	"D_NAME" VARCHAR2(100 BYTE), 
	"D_AGE" NUMBER, 
	"D_IMG" VARCHAR2(500 BYTE), 
	"D_WEIGHT" NUMBER, 
	"D_TYPE" VARCHAR2(30 BYTE), 
	"D_GENDER" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ESTIMATE
--------------------------------------------------------

  CREATE TABLE "ESTIMATE" 
   (	"E_NO" NUMBER, 
	"M_NO_PUPPY" NUMBER, 
	"E_NOTE" VARCHAR2(2000 BYTE), 
	"E_SERVICE" VARCHAR2(50 BYTE), 
	"M_NO_MANAGER" NUMBER, 
	"E_TRAINNING" VARCHAR2(2000 BYTE), 
	"E_EXTRAPRICE" NUMBER, 
	"E_EXTRA_REASON" VARCHAR2(2000 BYTE), 
	"E_TOTAL_PRICE" NUMBER, 
	"E_CON" NUMBER, 
	"E_REJECT" VARCHAR2(2000 BYTE), 
	"D_NO" NUMBER, 
	"A_NO" NUMBER, 
	"E_DATE" DATE DEFAULT sysdate, 
	"E_BASICPRICE" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table HAIRSTYLIST
--------------------------------------------------------

  CREATE TABLE "HAIRSTYLIST" 
   (	"H_NO" NUMBER, 
	"M_NO" NUMBER, 
	"A_NO" NUMBER, 
	"H_PRICE" NUMBER, 
	"H_SELF" VARCHAR2(2000 BYTE), 
	"H_SEL" VARCHAR2(2000 BYTE), 
	"H_LICENSE" VARCHAR2(500 BYTE), 
	"H_BUSINESSNO" VARCHAR2(200 BYTE), 
	"H_BEST" NUMBER DEFAULT 0, 
	"H_CAREER" NUMBER, 
	"H_SALARY" NUMBER, 
	"H_DATE" DATE DEFAULT sysdate, 
	"H_RAVG" NUMBER DEFAULT 0, 
	"H_RTOTAL" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"M_NO" NUMBER, 
	"M_ID" VARCHAR2(20 CHAR), 
	"M_PW" VARCHAR2(200 BYTE), 
	"M_NAME" VARCHAR2(100 BYTE), 
	"M_EMAIL" VARCHAR2(100 BYTE), 
	"M_PHONE" VARCHAR2(15 CHAR), 
	"M_NICK" VARCHAR2(200 BYTE), 
	"M_TYPE" NUMBER, 
	"M_STATUS" NUMBER DEFAULT 0, 
	"M_IMG" VARCHAR2(200 BYTE), 
	"M_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"N_NO" NUMBER, 
	"N_TITLE" VARCHAR2(100 BYTE), 
	"N_CONTENT" VARCHAR2(2000 BYTE), 
	"N_DATE" DATE DEFAULT sysdate, 
	"N_READCOUNT" NUMBER DEFAULT 0, 
	"N_IMG" VARCHAR2(300 BYTE), 
	"M_ID" VARCHAR2(20 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table PAY
--------------------------------------------------------

  CREATE TABLE "PAY" 
   (	"P_ORDER" VARCHAR2(100 BYTE), 
	"M_NO" NUMBER, 
	"T_NO" NUMBER, 
	"P_NAME_USER" VARCHAR2(40 BYTE), 
	"P_STATUS" NUMBER DEFAULT 0, 
	"P_OKNO" NUMBER, 
	"P_TIME" DATE DEFAULT sysdate, 
	"T_NO_NAME" VARCHAR2(200 BYTE), 
	"P_AMOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PERSISTENT_LOGIN
--------------------------------------------------------

  CREATE TABLE "PERSISTENT_LOGIN" 
   (	"USERNAME" VARCHAR2(64 BYTE), 
	"SERIES" VARCHAR2(64 BYTE), 
	"TOKEN" VARCHAR2(64 BYTE), 
	"LAST_USED" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSISTENT_LOGINS
--------------------------------------------------------

  CREATE TABLE "PERSISTENT_LOGINS" 
   (	"USERNAME" VARCHAR2(64 BYTE), 
	"SERIES" VARCHAR2(64 BYTE), 
	"TOKEN" VARCHAR2(64 BYTE), 
	"LAST_USED" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"Q_NO" NUMBER, 
	"Q_IMG" VARCHAR2(300 BYTE), 
	"Q_TITLE" VARCHAR2(100 BYTE), 
	"Q_CONTENT" VARCHAR2(2000 BYTE), 
	"Q_DATE" DATE DEFAULT sysdate, 
	"Q_READCOUNT" NUMBER DEFAULT 0, 
	"M_ID" VARCHAR2(20 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"R_NO" NUMBER, 
	"M_NO" NUMBER, 
	"R_TEXT" VARCHAR2(2000 BYTE), 
	"R_SCORE" NUMBER, 
	"R_DATE" DATE DEFAULT sysdate, 
	"R_IMG" VARCHAR2(200 BYTE), 
	"T_NO" NUMBER DEFAULT 0, 
	"H_NO" NUMBER DEFAULT 0, 
	"E_NO" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table TRAINER
--------------------------------------------------------

  CREATE TABLE "TRAINER" 
   (	"T_NO" NUMBER, 
	"M_NO" NUMBER, 
	"A_NO" NUMBER, 
	"T_PRICE" NUMBER, 
	"T_SELF" VARCHAR2(2000 BYTE), 
	"T_SEL" VARCHAR2(2000 BYTE), 
	"T_LICENSE" VARCHAR2(500 BYTE), 
	"T_BUSINESSNO" VARCHAR2(200 BYTE), 
	"T_BEST" NUMBER DEFAULT 0, 
	"T_CAREER" NUMBER, 
	"T_SALARY" NUMBER, 
	"T_DATE" DATE DEFAULT sysdate, 
	"T_RAVG" NUMBER DEFAULT 0, 
	"T_RTOTAL" NUMBER DEFAULT 0
   ) ;
REM INSERTING into AD
SET DEFINE OFF;
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (4,'DCB611C6C40140CB96D300135E3B08AD.png',to_date('22/10/19 15:20:20','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (5,'29CD93E4CD9941DAB43F0596572E1FFB.png',to_date('22/10/19 16:17:19','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (6,'1F9F10A10FA5441DAFCE9E618CBB4FB7.png',to_date('22/10/19 16:17:14','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (1,'EB5FF21F036E43DBB5BBBED75E33368B.png',to_date('22/10/19 15:20:07','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (2,'33ADCC4DED9D446CBF19BC6DAE27B524.png',to_date('22/10/21 14:45:09','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (3,'570B847FD08A433BB95AA5B6A5665996.png',to_date('22/10/19 16:17:07','RR/MM/DD HH24:MI:SS'));
REM INSERTING into ADDRESS
SET DEFINE OFF;
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (27,27,'경기 고양시 덕양구 대덕로86번길 8','401',10540,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (5,5,'경기 성남시 분당구 판교역로 4','1664',13536,'집','0013_0014_0103_0104');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (6,6,'경기 성남시 분당구 내정로 54','5645',13607,'집','0000');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (8,8,'경기 성남시 분당구 판교역로 235','101호',13494,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (10,10,'경기 성남시 분당구 궁내로 8','201호',13550,'집','0017_0021');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (13,13,'부산 영도구 재능길 9','214-65',49073,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (14,14,'서울 마포구 독막로42길 2','107동 1502호',4154,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (18,18,'서울 마포구 독막로42길 2','107동 1502호',4154,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (28,28,'대구 남구 대덕로 139','101동 1111호',42444,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (30,30,'경기 고양시 덕양구 대덕로86번길 76-23','401',10540,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (1,1,'경기 고양시 덕양구 대덕로86번길 76-23','b동 401',10540,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (2,2,'경기 성남시 분당구 판교역로10번길 3','옆길길',13536,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (3,3,'경기 성남시 분당구 대왕판교로 579','777호',13487,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (4,4,'서울 마포구 가양대로 1','1234',3900,'집','0004_0013_0014_0101_0103');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (7,7,'서울 금천구 가마산로 70','1234',8500,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (9,9,'경기 가평군 가평읍 가랫골길 1','달리오 펜션',12427,'집','0001_0005_0102_0106');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (11,11,'서울 동대문구 서울시립대로 5','11호',2592,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (12,12,'경기 오산시 가장로 439','운전학원',18103,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (15,15,'경기 오산시 가수로 9','1234',18125,'집','0000');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (16,16,'서울 강남구 봉은사로 404','소리집',6153,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (17,17,'서울 서대문구 봉원사2길 10-2','1234',3721,'집','0001_0015');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (19,19,'경기 양주시 남면 감악산로 16','1234',11409,'집','0105_0106');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (20,20,'서울 구로구 경인로 577','1234',8212,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (21,21,'경기 동두천시 동두천로 222','1234',11333,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (22,22,'서울 영등포구 경인로 701','1234',7289,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (23,23,'서울 관악구 난곡로45길 17','1234',8864,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (26,26,'경기 고양시 덕양구 대덕로86번길 76-23','302',10540,'집','0001_0002');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (29,29,'경기 고양시 덕양구 대덕로86번길 76-23','300',10540,'집','0001_0002_0101');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (24,24,'경기 고양시 덕양구 대덕로86번길 76-3','301호',10540,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (25,25,'경기 고양시 덕양구 대덕로86번길 76-3','111',10540,'집','0001_0102_0105');
REM INSERTING into AUTH
SET DEFINE OFF;
Insert into AUTH (M_NO,AUTH) values (27,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (5,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (6,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (8,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (10,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (13,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (14,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (18,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (28,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (30,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (1,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (2,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (3,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (4,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (3,'ROLE_ADMIN');
Insert into AUTH (M_NO,AUTH) values (7,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (9,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (11,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (12,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (15,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (16,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (17,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (19,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (20,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (21,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (22,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (23,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (26,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (29,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (24,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (25,'ROLE_TRAINER');
REM INSERTING into DOG
SET DEFINE OFF;
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (5,22,'GD',7,'B5E37F3D6DB344FD8ED3F0855208F34D.jpg',4,'포메','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (4,21,'가을이',4,'C57AFE62233C405FB8CC371C34BDE35B.jpg',3,'푸들','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (1,18,'가을이',4,'E0D295AB71764B239AD542B8D23DB7C1.jpg',5,'푸들','남');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (2,18,'쥬디',3,'AA32A2FDAA6144E99654342D506300C2.jpg',6,'비숑','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (8,28,'로또',4,'0BDC7BE23BD24D38985264A9C80ED44B.png',5,'잡종','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (3,1,'로또',14,'AE12D941E85246FBAE8031ABE62ABCC9.jpg',6,'시고르자브종','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (7,27,'로또',7,'C04CCDDDF1204659ABC4C7B323F46BEC.jpg',1,'포메','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (6,24,'로또',4,'21A7FEFB97674041969A1D6E7C385CCB.jpg',6,'포메','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (9,30,'로또',4,'9DB5D94B0A04459F834F4B8AD5B76ACC.png',5,'시고르자브종','여');
REM INSERTING into ESTIMATE
SET DEFINE OFF;
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (4,18,'사회성이 부족해요.','사회성교육',6,null,50000,'없음',200000,1,null,1,18,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),150000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (5,18,'밤만 되면 짖어요 ㅠㅠㅠ','문제행동교육',5,null,50000,'야간 교육',300000,1,null,2,18,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),250000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (12,22,'쥐디가 삐딱해요','위생 미용',19,null,0,'없음',120,4,null,5,22,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (13,22,'되게 무서운 강아지에요','위생 미용',19,null,30,'없음',150,4,null,5,22,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (15,18,'사회성이 없어요 !','사회성교육',8,null,0,'없음',100,5,null,2,18,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (1,18,'밥을 잘 안 먹어요.','기본교육',7,null,0,'없음',0,3,null,1,18,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),250000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (3,18,'오줌을 침대에 싸요','배변교육',8,null,10000,'오줌냄새',210000,5,null,2,18,to_date('22/10/18 12:30:00','RR/MM/DD HH24:MI:SS'),200000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (10,21,'가을이가 털이 많고 물수도 있습니다.','전체미용',19,null,30,'털이 많음',150,5,null,4,21,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (19,1,'리뷰가 많아서 부탁해봐요','사회성교육',6,null,0,'없음',200,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),200);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (11,21,'전체 미용 부탁드려요','전체미용',19,null,30,'없음',150,4,null,4,21,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (16,1,'위생미용이 필요해요','위생 미용',20,null,50,'위치 추가 비용',150,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (25,28,'강아지가 사람을 무서워합니다.','기본교육',12,null,0,'없음',111,5,null,8,28,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),111);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (2,1,'로또가 늙어서 소리에 민감해요','사회성교육',4,null,null,null,null,0,null,3,1,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),890000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (23,27,'너무 귀여워요','기본교육',25,null,0,'없음',100,5,null,7,27,to_date('22/10/20 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (24,27,'회사를 가기위해','기본교육',25,null,1,'없음',101,4,null,7,27,to_date('22/10/20 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (17,1,'깨끗한 미용을 원해요','위생 미용',20,null,0,'없음',100,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (20,1,'형욱님 뿐이죠','기본교육',12,null,9,'수수료',120,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),111);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (9,1,'강아지가 사람을 무서워해요','기본교육',8,null,0,'없음',100,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (22,24,'강아지의 입질이 심해요','기본교육',12,null,100,'입질이 심할떄는',211,5,null,6,24,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),111);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (26,30,'강아지가 너무 사나워요','기본교육',12,null,100,'입질교육은',5100,4,null,9,30,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),5000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (28,30,'거리가 너무 멀어요','기본교육',12,null,100,'없음',5100,5,null,9,30,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),5000);
REM INSERTING into HAIRSTYLIST
SET DEFINE OFF;
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (7,11,0,50000,'애견은 더이상 애견이 아닌 평생을 함께할 반려견이며 가족입니다.
가족으로 생각하고 임하겠습니다.','<p><span style="color:#e74c3c"><span style="font-size:24px"><span style="font-family:Georgia,serif">오픈 이벤트로 모든 애견미용에 추가비용이 붙지 않습니다</span></span></span></p>
','KKF 한국애견연맹 미용사 기술우수상 2개',null,0,7,null,to_date('22/10/19 14:52:49','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (8,16,0,250000,'애견미용사로 첫 발을 내딛었으며 20곳 이상의 애견숍 오픈 경험과 애견미용 학원을 운영하며 천 명 이상의 제자를 배출했습니다.','<p>애견미용사로 첫 발을 내딛었으며 20곳 이상의 애견숍 오픈 경험과 애견미용 학원을 운영하며 천 명 이상의 제자를 배출했습니다. 제자들에게 자신의 기술을 넘겨주기를 서슴지 않았고 후배들이 국내를 넘어 세계적으로 더 높은 위상을 드높일 그 날을 기대하며 한 길을 묵묵히 걷겠습니다.</p>
','KKC 한국애견협회 미용 심사의원',null,0,15,null,to_date('22/10/19 10:45:57','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (2,13,0,130,'항상 강아지에게 편안함을 제공해주는 미용사 김화란입니다.','<p>항상 강아지에게 편안함을 제공해주는 미용사 김화란입니다.</p>
','애견미용사자격증',null,0,5,null,to_date('22/10/19 16:55:02','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (3,14,0,750000,'인형처럼 무조건 예쁘게만 하는 미용사가 아니라 애완동물을 정말 사랑하는 마음으로 전문적인 관리를 할 수 있는 열정 가득한 애견 미용사입니다.','<p>입질과 미용 거부가 심한 아이는 미용이 중단 될 수 있으며 출장비만 받게 됩니다.</p>

<p>신청하실 때 전체 빡빡이, 얼굴컷은 하며 빡빡이, 전체 가위컷 원하시는 미용을 정확하게 알려주세요</p>
','반려견스타일리스트 3급',null,0,4,null,to_date('22/10/19 15:09:02','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (4,19,0,80000,'검증된 자격증으로 애견미용사로서 깔끔한 미용을 책임집니다.','<h5>애견미용사 2급자격증 취득</h5>

<p>방문애견미용사로 5년 근무했으며 동물병원에서 1년 근무했습니다</p>

<p>. 현재는 미미살롱펫과 펫트너소속 방문미용사로 일하고 있고 유기견보호소나 위탁보호소 미용봉사하고 있습니다</p>

<p>. 샵에서 미용을 받게되면 대부분의 아이들은 낯선공간에서 평균 두시간 이상 주인과 떨어져 있어야 하고 싫어하는 미용과 목욕까지 하게되면서 극심한 스트레스를 받게 됩니다.</p>

<p>미용만 하고 오면 밥을 먹지 않거나 잘 놀지않는 아이들은 그런 스트레스로 인해 나타나는 행동으로 보여집니다.</p>

<p>자택에서 미용을 받게 되면 이런 스트레스를 많이 줄여줄 수 있습니다.</p>

<p>(미용이 끝나면 바로 뛰어놀아요^^) 베넷미용(첫미용)이나 아픈아이 혹은 노령견도 자택에서 걱정없이 미용을 받을수 있습니다. 강아지 기본미용(발바닦 항문 생식기 발톱 항문낭 귓털) 레슨가능합니다 그룹레슨 개인레슨 문의주세요.</p>
','애견미용사 2급 ',null,0,5,null,to_date('22/10/20 09:50:08','RR/MM/DD HH24:MI:SS'),3.33,3);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (5,17,0,80000,'미용할 애견을 본인의 애견으로 또는 자식처럼 생각하며 미용하고 있습니다.

','<p>미용할 애견을 본인의 애견으로 또는 자식처럼 생각하며 미용하고 있습니다.</p>
','애견협회  3급',null,0,7,null,to_date('22/10/19 10:31:49','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (6,20,0,50000,'단순히 개털 깎는 미용사가 아닌 반려견의 다양한 스타일을 디자인하는 미용사입니다.','<p>단순히 개털 깎는 미용사가 아닌 반려견의 다양한 스타일을 디자인하는 미용사입니다.</p>
','애견협회3급2급',null,0,2,null,to_date('22/10/20 09:48:50','RR/MM/DD HH24:MI:SS'),5,1);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (1,10,0,80000,'kkf 한국애견연맹에서 주최하는 애견미용 대회에서 다수의 수상을 하고 현재 애견미용사','<p>kkf&nbsp;한국애견연맹에서 주최하는 애견미용 대회에서 다수의 수상을 하고&nbsp;현재 애견미용사</p>
','애견미용사자격증',null,0,5,null,to_date('22/10/19 09:49:21','RR/MM/DD HH24:MI:SS'),0,0);
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (27,'ex2','$2a$10$cThj0EqRygionWKIKdpe9uIdDb38cl8SRsNrEx30bwoqtxRM6splu','조성민','wings12345@naver.com','01027001761','재훈짱',0,0,'default.png',to_date('22/10/20 11:22:07','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (5,'bum11','$2a$10$AaG6fnobOIEgW7mRZ9uiP.oQRPVZpYSKWChlVffgRhHKZ3L8Hxnv6','김예슬','java@java.com','01012341234','김예슬',0,0,'35B2E0F157F44480B72FF2848EB22DB3.png',to_date('22/10/18 15:13:30','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (6,'bum22','$2a$10$U84szTB1.kHLGFlv1.bkwuYZHSiGkoKwkCW3n7kK08c0F3ZiHHLzG','마츠다','java1@java.com','01098746542','오사카형',0,0,'FA493ACCE2F2474EA8F9EFF921A8F707.png',to_date('22/10/18 15:15:22','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (8,'bum33','$2a$10$fP7hPdxjMc.HRAzfCfbOl.FNpajUkvQOmpiXuswMOfATmYg/DEuUC','성시경','tlriu@gmail.com','01045673258','방배동강형욱',0,0,'3C20CABD30E54D72AC364F6A6A51C6BB.png',to_date('22/10/18 15:16:19','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (10,'bum44','$2a$10$ZMqrl7tAQScMdX7kj.gGue1jUOatz1Wfktj47Co6YjjTGDyy/jmwG','좌시백','ewqfeqw@daum.net','01054839852','흰둥이엄마',0,0,'8E081534AAEA41BC8610AFE4A1F749B9.png',to_date('22/10/18 15:17:19','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (13,'bum55','$2a$10$.37tuim.cbjtFx.ZUzH27etNvgkdSV4e9asLo6IHawctPRKQjN2Ii','김화란','awwfws@naver.com','01098140024','화분',0,0,'8DA01438FA8A4EDDA6151C9828730F5F.png',to_date('22/10/18 15:18:25','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (14,'bum66','$2a$10$BMjbLeZbqN7qSs5GBusJdOSn1iKrGExMLfCmhhdihwqftfoMEXWfC','노착희','qdfqw@naver.com','01066818432','안착해',0,0,'4D0C8AA47AAA447B93EF1F49B4C524E0.png',to_date('22/10/18 15:19:05','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (18,'cqt95','$2a$10$UMBs654W4Q59MJbAZ5p9P.8GmO/S.p7uFHwzg4jHqhum5GwohlxgC','신짱구','cqt@naver.com','01032149845','액션가면',0,0,'8F3F8C13BD9F4846A4941E75FD9F40BF.png',to_date('22/10/18 15:21:52','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (28,'ja','$2a$10$cRZNuW5gt3WkzveO/JYe3uGlRJBtNC3EDynqeucTt7Do7gHjkqPY2','조성민','wings123123@naver.com','01027001761','굼댕',0,0,'default.png',to_date('22/10/20 19:14:41','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (30,'golddog','$2a$10$I4R2aKycUleKkz3ju6cuAuryw2irwqLz/k24wmFF1wjqknSonYDDa','조성민','wings425@naver.com','01027001761','금댕이',0,0,'B57B9F3D165A4212B7157B042DAE8A0C.png',to_date('22/10/21 14:34:28','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (1,'wings425','$2a$10$ulfPCfmVJt.EdoVaN4VaZOzYGGDQYJO8c40/VdfMzjNowhy9cjtRS','조성민','wings45@naver.com','01027001761','쿠키',0,0,'default.png',to_date('22/10/18 15:06:45','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (2,'wings123','$2a$10$30l1rRHhNXAmxL/ObtX6/ekFvkmTg0VDcbkk88vrucJNvtFTjwHBy','성민조','wings123@naver.com','01027001761','커피',0,0,'default.png',to_date('22/10/18 15:10:00','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (3,'admin','$2a$10$GX1lMLmRCZ4u1WHkB7U8juq/HK3LGORHfZVeDw0GeRVXigqeaT6Gq','관리자','wings2530@gmail.com','01011112222','관리자',0,0,'default.png',to_date('22/10/18 15:11:29','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (4,'a1234','$2a$10$LfVv0IqhOtBHFDIFPIHBoOifsMuv1jRRWLUU4.8n0RhUcFBa5YE0i','유튜브좋아요와구독','yjk100k@naver.com','01024244355','마포유튜브',0,0,'23013DD4FE16405E9F21747AC78338CA.png',to_date('22/10/18 15:13:09','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (7,'b1234','$2a$10$kkw0TJBcvi9VA2FscNv9lez8lb/qx80rJfN1/mWWOd4lPK02tF.wm','민혁','heroof@gmail.com','01099251348','강민혁',0,0,'8C89335243554BB3B6D6D9229FD391B9.png',to_date('22/10/18 15:16:07','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (9,'java10','$2a$10$J9anDvTHe0Ca7b9nMaIL/uh1Ju/KCwKaFOXYwNZOBM75WEKxFH.C.','김현동','wings1@naver.com','01027001761','슈퍼독',0,0,'2B5FB589B60743A19B4A45984434E252.png',to_date('22/10/18 15:16:33','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (11,'java11','$2a$10$Km2TRZW.W3D18wjG4ZZ8ged.XlqqYJgWBA7zML0NYlKw52ZnMoB4W','김인형','wings12121@naver.com','01087971111','태양의손',0,0,'88697290BCCE45058CE025E93C284785.png',to_date('22/10/18 15:17:28','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (12,'java12','$2a$10$O2sjgH5pijlUwiS9eU3QMu9LWevHUID2jJZ.g/2vdKEY9T2lS77ge','소지훈','wings11@naver.com','01012123131','개형욱',0,0,'E226EBD6724F452F8AAEA7F5D2E34A04.png',to_date('22/10/18 15:18:21','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (15,'c1234','$2a$10$63oljdR60j712Q8CqbCvq..JmyPcM7lxfFs5vDAPBIvuQLGz9WHly','조강현','yakjsStrongJGH@hanmail.net','01033212567','친절한금자씨',0,0,'2681366B6B344C7CA489203B30BEC3FA.png',to_date('22/10/18 15:19:21','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (16,'java13','$2a$10$lWyGE11VXgWpzvOM0Ajppe.TabGgZd3wClaaN9H2eogWjKHo2SJUK','수지연','wings1234@naver.com','0102222','견과함께',0,0,'EF21773614BA4768B2377C065D8C9C78.png',to_date('22/10/18 15:19:24','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (17,'aa1234','$2a$10$sjdshyL3K0Dmn65L59Krbea/EzzATz.D7hBd9ZRt/k79qHPMYzy0a','감자보이','kamja@gamja.ka','11144441111','서초구미용사',0,0,'885C04CCAAB948EA9E4A3768139DDF12.png',to_date('22/10/18 15:21:28','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (19,'bb1234','$2a$10$/J0DcscHe7c2oQ0eOefImOlkbFBafT9lEV7U7k08zIDi6yvsAlvu2','조성민','rearcarStillJSM@stilling.do','01023346658','감자아빠',0,0,'958EC7E3B00B419483B3F9FD2B2B0326.png',to_date('22/10/18 15:24:01','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (20,'cc','$2a$10$/vEGZ7UVT.KknhJNgcEQr.uDeEpTuhT7SH/yoAOXCiJFQtj/gEzqS','최범석','1korailDarkloadCBS@kakao.com','01022234456','금호동',0,0,'9C96773B8ED84F249F5CF2934FB9A7FB.png',to_date('22/10/18 15:25:58','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (21,'aaa1234','$2a$10$6x61RVQiLpP0q4IdRhC1Deg0SpOgphHke4lNyp48Y9Btj8gF/F1pq','이민형','seniorCitizenNo1@meaning.com','01039563321','경로당일찐남이민형',0,0,'default.png',to_date('22/10/18 15:29:34','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (22,'bbb1234','$2a$10$RBgItTZ99ozAsplagxj9zu3Yz9JMdHbJS83us.3UKMaDhhRPy.qfC','조성민','clichSpoilerJSM@naver.com','01064978256','클리셰스포남조성민',0,0,'default.png',to_date('22/10/18 15:32:46','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (23,'ccc1234','$2a$10$GLnsBSAO0H40HvKTdia5Gu4S2G2Mnd/wwmbm5iCW7bvhUU8hK9FqC','최범석','DestroyGranmaRearcarBS@yahoo.com','01042687931','할머니리어카파괴범석',0,0,'default.png',to_date('22/10/18 15:35:24','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (26,'ex1','$2a$10$JhyE4OW67MJTkp6nQhH6z.BTIkOHWVXPqWjs.DkT8c9mwG7rnsNpm','조성민','wings1761@naver.com','01027001761','소울메이트',0,0,'default.png',to_date('22/10/20 09:31:15','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (29,'trainer','$2a$10$UHJo4UYkl2iDp6QTbVQW4uDoBmQBMWRFkQgPzRPjrDrNIcOfzE23e','조성민','wings1010@naver.com','01027001761','훈련사성민',0,0,'96972E4DC5CF42A69917328DDD4D31A8.png',to_date('22/10/21 10:18:36','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (24,'java77','$2a$10$rc9o5dLIZnRuTDbrgwfZ8elmkGaTkE9bEsqS1L4/Y5ukTwGiL509m','조성민','wings1111@naver.com','01027001761','아메리카노',0,0,'566B0566F08B4603A2ADF14937F139B7.png',to_date('22/10/19 21:26:16','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (25,'wiwi','$2a$10$nzHPqhSXZZTYm30KgppMhulAYNWe8o3p1Gdvl.W5ydsBM6/YOd75y','조성민','qweqwe1@naver.com','01027001761','wiwi',0,0,'46BC162BBBE14A33940D7CC117DF7FAD.png',to_date('22/10/19 21:44:12','RR/MM/DD HH24:MI:SS'));
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (1,'강아지와 고양이 동시에 돌봄 가능한가요?','현재 반려견 미용, 훈련 서비스 만을 진행중입니다.

향후 반려묘 서비스도 진행을 위해 검토중에 있으니, 많은 관심 부탁드립니다.',to_date('22/10/19 19:18:33','RR/MM/DD HH24:MI:SS'),1,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (2,'서비스 이용요금(모두 VAT 포함 금액)','1년간 무상 서비스 중입니다.',to_date('22/10/19 19:42:01','RR/MM/DD HH24:MI:SS'),13,'10DCB072795B4168A839B86CEA1BBBAB.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (3,'서비스 가능지역','서울과 경기권 지역의 훈련사& 미용사 분들이 대기중입니다.',to_date('22/10/19 19:42:29','RR/MM/DD HH24:MI:SS'),7,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (5,'새로운 공지','사이트가 10-21일 오픈합니다',to_date('22/10/20 09:37:04','RR/MM/DD HH24:MI:SS'),15,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (6,'강아지 호텔 제휴','강아지 호텔과 제휴해 저렴한 가격에 이용할수 있는 서비스를 제공하고 있습니다.',to_date('22/10/20 09:38:17','RR/MM/DD HH24:MI:SS'),3,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (4,'금댕이의 방문 애견미용 매니저/훈련 매니저를 믿을 수 있나요?','전문 애견미용사(혹은 펫시터)로서 까다로운 신원 검증 통과, 최소 3년 이상 반려 경험 보유,전문 이론 및 실습 교육을 모두 이수한 전문가입니다 

''안전보상지원''과 관련하여 자세한 사항은 아래 링크를 참조해주세요.

https://www.dogcare33.com/content/safe ',to_date('22/10/19 21:10:32','RR/MM/DD HH24:MI:SS'),15,'default.png','admin');
REM INSERTING into PAY
SET DEFINE OFF;
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101813080632',32,0,'1234',0,null,to_date('22/10/18 13:09:06','RR/MM/DD HH24:MI:SS'),'자바최',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101813132932',32,1,'1234',0,null,to_date('22/10/18 13:14:15','RR/MM/DD HH24:MI:SS'),'자바최',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818263718',18,5,'액션가면',0,null,to_date('22/10/18 18:27:12','RR/MM/DD HH24:MI:SS'),'잘자요',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818284118',18,5,'액션가면',0,null,to_date('22/10/18 18:29:19','RR/MM/DD HH24:MI:SS'),'잘자요',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818310318',18,7,'액션가면',0,null,to_date('22/10/18 18:31:41','RR/MM/DD HH24:MI:SS'),'강민혁',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918485422',22,0,'클리셰스포남조성민',0,null,to_date('22/10/19 18:49:23','RR/MM/DD HH24:MI:SS'),'할머니유모차도둑조성민',120);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918513422',22,0,'클리셰스포남조성민',0,null,to_date('22/10/19 18:51:58','RR/MM/DD HH24:MI:SS'),'할머니유모차도둑조성민',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101813064732',32,0,'1234',0,null,to_date('22/10/18 13:07:29','RR/MM/DD HH24:MI:SS'),'자바최',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101817570818',18,7,'액션가면',0,null,to_date('22/10/18 17:57:42','RR/MM/DD HH24:MI:SS'),'강민혁',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818004718',18,7,'액션가면',0,null,to_date('22/10/18 18:01:27','RR/MM/DD HH24:MI:SS'),'강민혁',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818044418',18,7,'액션가면',0,null,to_date('22/10/18 18:05:19','RR/MM/DD HH24:MI:SS'),'강민혁',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818133218',18,5,'액션가면',0,null,to_date('22/10/18 18:14:01','RR/MM/DD HH24:MI:SS'),'잘자요',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818252918',18,5,'액션가면',0,null,to_date('22/10/18 18:26:45','RR/MM/DD HH24:MI:SS'),'잘자요',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192040001',1,3,'쿠키',0,null,to_date('22/10/19 20:41:14','RR/MM/DD HH24:MI:SS'),'오사카행님',200);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918402121',21,0,'경로당일찐남이민형',0,null,to_date('22/10/19 18:40:48','RR/MM/DD HH24:MI:SS'),'할머니유모차도둑조성민',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101919383018',18,5,'액션가면',0,null,to_date('22/10/19 19:39:17','RR/MM/DD HH24:MI:SS'),'잘자요',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192022111',1,6,'쿠키',0,null,to_date('22/10/19 20:22:43','RR/MM/DD HH24:MI:SS'),'1호선다크로드최범석',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102011252324',24,4,'아메리카노',0,null,to_date('22/10/20 11:26:25','RR/MM/DD HH24:MI:SS'),'개형욱',211);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102019250928',28,4,'굼댕',0,null,to_date('22/10/20 19:26:32','RR/MM/DD HH24:MI:SS'),'개형욱',111);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918314421',21,0,'경로당일찐남이민형',0,null,to_date('22/10/19 18:32:18','RR/MM/DD HH24:MI:SS'),'할머니유모차도둑조성민',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102015404227',27,9,'재훈짱',0,null,to_date('22/10/20 15:41:24','RR/MM/DD HH24:MI:SS'),'wiwi',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102017521527',27,9,'재훈짱',0,null,to_date('22/10/20 17:52:53','RR/MM/DD HH24:MI:SS'),'wiwi',101);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210191802351',1,5,'쿠키',0,null,to_date('22/10/19 18:03:14','RR/MM/DD HH24:MI:SS'),'잘자요',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192031391',1,6,'쿠키',0,null,to_date('22/10/19 20:32:01','RR/MM/DD HH24:MI:SS'),'1호선다크로드최범석',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192111481',1,4,'쿠키',0,null,to_date('22/10/19 21:12:47','RR/MM/DD HH24:MI:SS'),'개형욱',120);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101921385724',24,4,'아메리카노',0,null,to_date('22/10/19 21:39:58','RR/MM/DD HH24:MI:SS'),'개형욱',120);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102114390830',30,4,'금댕이',0,null,to_date('22/10/21 14:40:00','RR/MM/DD HH24:MI:SS'),'개형욱',5100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102115581230',30,4,'금댕이',0,null,to_date('22/10/21 15:59:23','RR/MM/DD HH24:MI:SS'),'개형욱',5100);
REM INSERTING into PERSISTENT_LOGIN
SET DEFINE OFF;
REM INSERTING into PERSISTENT_LOGINS
SET DEFINE OFF;
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (2,'default.png','원하는 애견미용사(펫시터)를 선택 예약할 수 있나요?','제곧내',to_date('22/10/19 19:24:14','RR/MM/DD HH24:MI:SS'),2,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (3,'default.png','서비스 예약과 결제가 어떻게 진행되는지 알고 싶어요.','서비스 예약과 결제가 어떻게 진행되는지 알고 싶어요.',to_date('22/10/19 19:24:53','RR/MM/DD HH24:MI:SS'),1,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (4,'default.png','서비스 가능지역은 어디인가요?','서비스 가능지역은 어디인가요?',to_date('22/10/19 19:26:43','RR/MM/DD HH24:MI:SS'),1,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (5,'default.png','산책(돌봄)서비스 이용시 방문후 출입 비밀번호 등 정보 유출이 걱정됩니다','산책(돌봄)서비스 이용시 방문후 출입 비밀번호 등 정보 유출이 걱정됩니다',to_date('22/10/19 19:27:30','RR/MM/DD HH24:MI:SS'),2,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (1,'default.png','반려묘 미용/돌봄 서비스는 없나요?','반려묘 미용/돌봄 서비스는 없나요?',to_date('22/10/19 19:17:16','RR/MM/DD HH24:MI:SS'),3,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (6,'default.png','방문서비스 이용 가능 지역','방문서비스 이용 가능 지역',to_date('22/10/19 19:35:15','RR/MM/DD HH24:MI:SS'),1,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (7,'default.png','방문 취소는 어떻게 하나요?','방문 취소는 어떻게 하나요?',to_date('22/10/19 19:35:39','RR/MM/DD HH24:MI:SS'),2,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (8,'default.png','방문서비스 당일 예약','방문서비스 당일 예약이 가능한가요??',to_date('22/10/19 19:36:50','RR/MM/DD HH24:MI:SS'),1,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (9,'default.png','대형견은 추가가격이 있나요?','대형견은 추가가격이 있나요?',to_date('22/10/19 19:40:10','RR/MM/DD HH24:MI:SS'),2,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (10,'default.png','파주는 오시나요?','너무 멀까요?',to_date('22/10/19 19:40:26','RR/MM/DD HH24:MI:SS'),3,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (11,'default.png','방문서비스 이용 가능 지역','어디인가요?',to_date('22/10/19 19:40:39','RR/MM/DD HH24:MI:SS'),5,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (13,'default.png','채팅이 뭔가요?','채팅이 뭔가요?',to_date('22/10/20 10:11:17','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (15,'default.png','채팅이 뭔가요?','채팅이 뭔가요?',to_date('22/10/20 10:11:23','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (33,'default.png','출입 비밀번호 등 정보 유출이 걱정될 때','출입 비밀번호 등 정보 유출이 걱정될 때',to_date('22/10/20 10:24:28','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (34,'default.png','출입 비밀번호 등 정보 유출이 걱정될 때','출입 비밀번호 등 정보 유출이 걱정될 때',to_date('22/10/20 10:24:30','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (25,'default.png','연휴 또는 공휴일에는 별도 추가 비용이 발생하나요?','연휴 또는 공휴일에는 별도 추가 비용이 발생하나요?',to_date('22/10/20 10:13:24','RR/MM/DD HH24:MI:SS'),13.5,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (39,'default.png','출입 비밀번호 등 정보 유출이 걱정될 때','출입 비밀번호 등 정보 유출이 걱정될 때',to_date('22/10/20 10:24:43','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (40,'default.png','출입 비밀번호 등 정보 유출이 걱정될 때','출입 비밀번호 등 정보 유출이 걱정될 때',to_date('22/10/20 10:24:45','RR/MM/DD HH24:MI:SS'),1,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (41,'default.png','출입 비밀번호 등 정보 유출이 걱정될 때','출입 비밀번호 등 정보 유출이 걱정될 때',to_date('22/10/20 10:24:48','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (43,'default.png','반려묘 미용/돌봄 서비스는 없나요?','고양이도 취급하나요?',to_date('22/10/20 10:25:22','RR/MM/DD HH24:MI:SS'),2,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (44,'default.png','원하는 애견미용사(펫시터)를 선택 예약할 수 있나요?','원하는 애견미용사(펫시터)를 선택 예약할 수 있나요?',to_date('22/10/20 10:25:29','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (45,'default.png','서비스 예약과 결제가 어떻게 진행되는지 알고 싶어요.','서비스 예약과 결제가 어떻게 진행되는지 알고 싶어요.',to_date('22/10/20 10:25:34','RR/MM/DD HH24:MI:SS'),5,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (14,'default.png','채팅이 뭔가요?','채팅이 뭔가요?',to_date('22/10/20 10:11:20','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (23,'default.png','서비스는 어디서 받게 되나요?','집에서 받나요??',to_date('22/10/20 10:13:00','RR/MM/DD HH24:MI:SS'),7,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (24,'default.png','저희는 2마리인데 동시에 서비스를 받을 수 있나요?','가능할까요?',to_date('22/10/20 10:13:15','RR/MM/DD HH24:MI:SS'),8,'wiwi');
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (2,22,'멋진 사람이에요',2,to_date('22/10/19 18:50:58','RR/MM/DD HH24:MI:SS'),'8849C6E03FB2410B8E97F486EA543464.png',0,19,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (16,28,'너무좋은 훈련이였습니다.',5,to_date('22/10/20 19:28:48','RR/MM/DD HH24:MI:SS'),'BF668EA80FB14414B7008C65632888F6.png',4,0,25);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (4,22,'엄청난 처리였어요',3,to_date('22/10/19 18:59:03','RR/MM/DD HH24:MI:SS'),'0827FDC286534983907AA1D8EC9E8CCA.jpg',0,19,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (6,18,'사회성이 좋아졌어요 !',3,to_date('22/10/19 19:49:57','RR/MM/DD HH24:MI:SS'),'E18DE076BF1449F5BD713F9A7D4A708F.png',8,0,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (11,1,'광현이랑은 비교도 안되게 좋다',5,to_date('22/10/19 20:42:11','RR/MM/DD HH24:MI:SS'),'BEFA886C0A9046C2B785720AD1C8B980.png',3,0,19);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (1,21,'진짜 좋은 훈련을 받은 것 같아요',5,to_date('22/10/19 18:41:23','RR/MM/DD HH24:MI:SS'),'D8D8D68BF6FE41BDA9A52E62DCE36864.png',0,19,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (5,18,'아주 마음에 들었어요',5,to_date('22/10/19 19:45:26','RR/MM/DD HH24:MI:SS'),'D16505ED765A4AFDA7803F7574B146B4.png',8,0,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (7,18,'정말 좋습니다 ~',5,to_date('22/10/19 20:05:23','RR/MM/DD HH24:MI:SS'),'59160102D6BA4BF6A1FE5F34B9FE3C99.png',8,0,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (8,18,'정말 최고에요 !',5,to_date('22/10/19 20:20:02','RR/MM/DD HH24:MI:SS'),'E577BA39CD1247BCB0B0EB667135FAA9.png',8,0,15);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (9,1,'너무 좋은 훈련이였습니다.',5,to_date('22/10/19 20:23:18','RR/MM/DD HH24:MI:SS'),'D3B62D4E3AE245DFA943853C2B0048AB.png',0,20,16);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (14,24,'너무 멋진 훈련사였어요',4,to_date('22/10/20 11:28:38','RR/MM/DD HH24:MI:SS'),'dog.jpg',4,0,22);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (15,27,'너무 좋아요',5,to_date('22/10/20 15:42:37','RR/MM/DD HH24:MI:SS'),'dog.jpg',9,0,23);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (10,1,'별론거같아요',4,to_date('22/10/19 20:32:27','RR/MM/DD HH24:MI:SS'),'3151241D5E1F415581204CF4D0B44AB2.png',0,6,17);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (12,1,'역시형욱',5,to_date('22/10/19 21:19:27','RR/MM/DD HH24:MI:SS'),'5CF8E38B35AC4819A5AED72926B5E4C9.png',4,0,20);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (13,24,'역시 형욱이형이야',5,to_date('22/10/19 21:41:25','RR/MM/DD HH24:MI:SS'),'7D9A0F7C3E844B8B8D35965A5E0F8FF5.jpg',4,0,21);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (17,30,'너무 멋진 훈련입니다.',5,to_date('22/10/21 16:01:40','RR/MM/DD HH24:MI:SS'),'0FEC755196A24949BEB9F969A77DF8A9.jpg',4,0,28);
REM INSERTING into TRAINER
SET DEFINE OFF;
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (1,9,0,100000,'저는 강아지훈련을 테스트','<p>?미디어또는 방송을 보고 따라해봤는데 개선이안되시나요??</p>

<p>너무 많은지식과 정보가 널려있어서 고민 많으시죠? 이유는 정해져 있습니다</p>

<p>Super Dog (슈퍼독) ?관계의중요성? 쉽고 편하고 (보호자의마음)직접 할수있어야 교육훈련입니다.</p>

<p>?-분리불안- -예절교육-?</p>

<p>?-공격성(입질)- -펫티켓바로알기-?</p>

<p>?-배변교육- -우리개바로알기-?</p>

<p>?-산책교육- -퍼피트레이닝-?</p>

<p>말하지 못하는 강아지기에 더욱 신중해야합니다 저마다 키우는 방식과 방법 그리고 환경 모든 부분이 다 같을 수 없습니다. 정말 반려견이 원하는걸 해주는 보호자가 되어주세요^^</p>
','강아지 자격증',null,0,5,null,to_date('22/10/19 15:06:09','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (4,12,0,5000,'5년경력 훈련사입니다.','<p>&nbsp;-독마인드- 문제행동에만 집중하지마세요 반려견과 보호자의 ??관계?안에서 모든게 만들어집니다</p>
','정보기능',null,0,4,10311,to_date('22/10/19 21:37:07','RR/MM/DD HH24:MI:SS'),4.8,5);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (2,5,0,250000,'반려견 교육.행동.심리.질병.음식.관리
15년차 애견연맹 공인1등애견훈련사 조재호 ','<p><span style="color:#e74c3c"><span style="font-size:26px">반려견 교육 서비스</span></span></p>

<p><span style="color:#e74c3c"><span style="font-size:26px">행동 : 기본가격</span></span></p>

<p><span style="color:#d35400"><span style="font-size:26px">심리 : 3회시 할인</span></span></p>

<p><span style="color:#f1c40f"><span style="font-size:26px">질병 : 예방접종 케어 서비스 별도</span></span></p>

<p><span style="color:#1abc9c"><span style="font-size:26px">음식관리 : 매일먹는 식단관리 한달 3만원 서비스</span></span><br />
&nbsp;</p>
','수의학 교원자격증',null,0,15,null,to_date('22/10/19 14:57:18','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (3,6,0,120000,'반려견의 행동문제 왈독에서 도와드리겠습니다.','<p>&lt;오픈 이벤트&gt; 하나. 방문 상담 무료! 방문 상담 후 2회차 교육 진행 시 방문 상담 비용을 무료로 해드립니다.</p>

<p>방문 상담은 교육 횟수에 포함되지 않습니다. (교육을 진행하지 않을 시 방문 상담은 별도의 비용이 발생 합니다.)</p>
','반려동물행동교정사 자격증',null,0,5,null,to_date('22/10/20 09:38:22','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (5,8,0,200000,'보호자와 반려견의 행복한 “동행” 가정방문교육','<h5>안녕하세요, 현재 3마리의 반려묘와 함께 동거중입니다.</h5>

<p>반려견 산책과 더불어 집을 비워야 하는 상황에</p>

<p>고객님 집에서 펫시터(강아지,고양이) 원하시면 언제든지 상담요청</p>

<p>부탁드려요~</p>
','반려동물행동교정사 자격증',null,0,8,null,to_date('22/10/20 09:44:03','RR/MM/DD HH24:MI:SS'),4.5,4);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (6,4,0,150000,'복잡한 사회에서 올곧게 자라야 할 반려견에게 교육은 선택이 아닌 필수입니다.','<p>복잡한 사회에서 올곧게 자라야 할 반려견에게 교육은 선택이 아닌 필수입니다.</p>
','반려동물행동교정사 자격증',null,0,3,null,to_date('22/10/20 09:42:06','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (7,7,0,250000,'전 [KPA-CTP] 미국 카렌프레이어 아카데미 인증 트레이너 입니다. 국내는 물론 미국 다수의 유명 공인기관에서 자격을 취득했습니다.','<p>전 [KPA-CTP] 미국 카렌프레이어 아카데미 인증 트레이너 입니다. 국내는 물론 미국 다수의 유명 공인기관에서 자격을 취득했습니다.</p>
','KPA-CTP',null,0,10,null,to_date('22/10/18 16:20:08','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (8,15,0,100000,'네이버 지식인 엑스퍼트 반려견 직접 상담부문 최다 상담. 보호자와 반려견이 함께 살아갈 수 있는 방법을 알려드립니다!','<p>보호자님께서 여행가시거나 외출하실때 혼자있는 반려견을 위해,</p>

<p>펫시터가 찾아가 보호자님께서 원하시는 요청데로&nbsp;돌봄이 이루어집니다~</p>
',null,null,0,3,null,to_date('22/10/20 09:40:45','RR/MM/DD HH24:MI:SS'),5,11);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (10,26,0,100,'3년경력이있습니다','<p><span style="color:#1abc9c"><span style="font-size:22px">판매는 잘 이루어 집니다</span></span></p>
','워드프로세서',null,0,1,null,to_date('22/10/20 11:30:16','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (9,25,0,100,'처음 등록한 훈련사 입니다.','<p>처음 등록한 훈련사 입니다.</p>
','워드프로세서',null,0,1,101,to_date('22/10/20 09:29:16','RR/MM/DD HH24:MI:SS'),5,1);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (11,29,0,10000,'3년경력입니다.','<p>??상담을 대표만 해드리기에 조금 늦을수도 있어요??<br />
? 저희 견생 애견훈련소에서는<br />
대표가 직접 방문하여 교육을 진행하고있습니다.? ?<br />
?경력11년차의 베테랑 훈련사 이며??<br />
반려동물 행동 심리전문가 입니다.?<br />
방문훈련경험 ?약:2000회 이상??의 경험을 겸비하고있습니다.?<br />
? 전국 방문 교육 출장 가능?</p>
','애견관련자격증',null,0,3,null,to_date('22/10/21 14:42:59','RR/MM/DD HH24:MI:SS'),0,0);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" MODIFY ("Q_TITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("Q_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNA" ADD PRIMARY KEY ("Q_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOG
--------------------------------------------------------

  ALTER TABLE "DOG" MODIFY ("D_NAME" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_AGE" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_IMG" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_WEIGHT" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_TYPE" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_GENDER" NOT NULL ENABLE);
  ALTER TABLE "DOG" ADD PRIMARY KEY ("D_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAINER
--------------------------------------------------------

  ALTER TABLE "TRAINER" MODIFY ("T_SELF" NOT NULL ENABLE);
  ALTER TABLE "TRAINER" MODIFY ("T_SEL" NOT NULL ENABLE);
  ALTER TABLE "TRAINER" ADD PRIMARY KEY ("T_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTIMATE
--------------------------------------------------------

  ALTER TABLE "ESTIMATE" ADD PRIMARY KEY ("E_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("R_TEXT" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("R_SCORE" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("R_IMG" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD PRIMARY KEY ("R_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSISTENT_LOGINS
--------------------------------------------------------

  ALTER TABLE "PERSISTENT_LOGINS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGINS" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGINS" MODIFY ("LAST_USED" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGINS" ADD PRIMARY KEY ("SERIES")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADDRESS" ADD PRIMARY KEY ("A_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table HAIRSTYLIST
--------------------------------------------------------

  ALTER TABLE "HAIRSTYLIST" MODIFY ("H_SELF" NOT NULL ENABLE);
  ALTER TABLE "HAIRSTYLIST" MODIFY ("H_SEL" NOT NULL ENABLE);
  ALTER TABLE "HAIRSTYLIST" ADD PRIMARY KEY ("H_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("M_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_PW" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_PHONE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD PRIMARY KEY ("M_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSISTENT_LOGIN
--------------------------------------------------------

  ALTER TABLE "PERSISTENT_LOGIN" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGIN" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGIN" MODIFY ("LAST_USED" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGIN" ADD PRIMARY KEY ("SERIES")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AD
--------------------------------------------------------

  ALTER TABLE "AD" MODIFY ("AD_IMG" NOT NULL ENABLE);
  ALTER TABLE "AD" ADD PRIMARY KEY ("AD_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("N_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("N_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" ADD PRIMARY KEY ("N_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "PAY" ADD PRIMARY KEY ("P_ORDER")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTH
--------------------------------------------------------

  ALTER TABLE "AUTH" ADD CONSTRAINT "M_NO_FK" FOREIGN KEY ("M_NO")
	  REFERENCES "MEMBER" ("M_NO") ENABLE;
