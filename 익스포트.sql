--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-14-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADDRESS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADDRESS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence AD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ESTIMATE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ESTIMATE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence HAIRSTYLIST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HAIRSTYLIST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 39 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PAY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PAY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 24 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TRAINER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRAINER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
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
	"E_BASICPRICE" NUMBER DEFAULT 0, 
	"E_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table HAIRSTYLIST
--------------------------------------------------------

  CREATE TABLE "HAIRSTYLIST" 
   (	"H_NO" NUMBER, 
	"U_NO" NUMBER, 
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
	"M_TYPE" VARCHAR2(100 BYTE), 
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
   (	"P_ORDER" NUMBER, 
	"M_NO" NUMBER, 
	"P_NAME_MANAGER" VARCHAR2(40 BYTE), 
	"P_NAME_USER" VARCHAR2(40 BYTE), 
	"P_STATUS" NUMBER DEFAULT 0, 
	"P_OKNO" NUMBER, 
	"P_TIME" DATE DEFAULT sysdate
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
	"T_NO" NUMBER, 
	"H_NO" NUMBER
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
	"T_SALARY" NUMBER DEFAULT 0, 
	"T_DATE" DATE DEFAULT sysdate, 
	"T_RAVG" NUMBER DEFAULT 0, 
	"T_RTOTAL" NUMBER DEFAULT 0
   ) ;
REM INSERTING into AD
SET DEFINE OFF;
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (1,'038C431AC9E54AF996BF5E4371507DB7.jpg',to_date('22/10/07 17:09:20','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (2,'993C0C8F33874A19A91D2C14FA9CBE3F.jpg',to_date('22/10/07 17:08:11','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (3,'A4DF23B3BDE64ED794B176ADF60DD049.jpg',to_date('22/10/07 17:13:42','RR/MM/DD HH24:MI:SS'));
REM INSERTING into ADDRESS
SET DEFINE OFF;
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (6,29,'서울 마포구 독막로42길 2','101동 1111호',4154,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (7,30,'경기 성남시 분당구 내정로 54','101동 101호',13607,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (9,32,'1234',null,1234,'집','0009_0100');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (14,38,'경기 성남시 분당구 대왕판교로 477','1234',13480,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (4,16,'서울 마포구 독막로42길 2','107동 1502호',4154,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (5,18,'서울 마포구 독막로42길 2','107동 1502호',4154,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (10,33,'경기 성남시 분당구 내정로 54','101동 1111호',13607,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (1,0,'경기 성남시 분당구 내정로 54','222동 1111호',13607,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (13,37,'서울 마포구 독막로42길 2','106동 102호',4154,'집','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (2,12,'서울 마포구 독막로42길 2','107동 1502호',4154,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (3,13,'서울 마포구 독막로42길 2','107동 1502호',4154,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (8,31,'경기 성남시 분당구 판교역로 235','102동 1202호',13494,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (11,34,'경기 성남시 분당구 내정로 54','101동 101호',13607,'집',null);
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (12,35,'경기 성남시 분당구 내정로 54','111동 222호',13607,'집',null);
REM INSERTING into AUTH
SET DEFINE OFF;
Insert into AUTH (M_NO,AUTH) values (29,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (30,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (32,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (32,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (32,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (38,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (38,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (37,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (1,'MEMBER');
Insert into AUTH (M_NO,AUTH) values (1,'ADMIN');
Insert into AUTH (M_NO,AUTH) values (6,'MEMBER');
Insert into AUTH (M_NO,AUTH) values (6,'ADMIN');
Insert into AUTH (M_NO,AUTH) values (31,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (35,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (35,'ROLE_ADMIN');
REM INSERTING into DOG
SET DEFINE OFF;
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (7,35,'로또',7,'dog.jpg',7,'시고르자브종','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (8,35,'설이',3,'dog.jpg',3,'포메라니안','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (17,35,'가을이',4,'B928D3339C7942509D5D4E04E5BD4E3D.jpg',5,'푸들','남');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (18,35,'쥬디',3,'083C9779E1D54F028F463C6F3186553E.jpg',6,'비숑','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (19,32,'가을이',4,'68A70DE83DEE495AAEFD23AA474DE4E9.jpg',5,'푸들','남');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (1,1,'로또',7,'dog.jpg',7,'시고르자브종','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (2,1,'설이',3,'dog.jpg',3,'포메라니안','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (3,23,'로또',7,'dog.jpg',7,'시고르자브종','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (4,23,'설이',3,'dog.jpg',3,'포메라니안','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (5,31,'로또',7,'dog.jpg',7,'시고르자브종','여');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (6,31,'설이',3,'dog.jpg',3,'포메라니안','여');
REM INSERTING into ESTIMATE
SET DEFINE OFF;
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_BASICPRICE,E_DATE) values (8,38,'우리 설이는 잘생긴사람 좋아해요','원하는 미용 :,짧게 깎아주쇼',1,null,0,'없음',22323,1,null,8,6,10000,null);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_BASICPRICE,E_DATE) values (9,38,'범석님 기운이 사라지는중','원하는 미용 :,범석님 화이팅',1,null,null,null,null,0,null,8,6,10000,null);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_BASICPRICE,E_DATE) values (5,38,'어떤가요','기타,이렇게 쓰면',1,null,null,null,null,0,null,7,6,10000,null);
REM INSERTING into HAIRSTYLIST
SET DEFINE OFF;
Insert into HAIRSTYLIST (H_NO,U_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (1,1,1,123,'성민추가','테스트','노자격증','12345-5',0,5,1234,to_date('22/10/07 11:23:24','RR/MM/DD HH24:MI:SS'),0,0);
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (4,'java12','1234','최자바1','java@java.com','010-1234-1234','자바최1','owner',0,'null',to_date('22/09/30 15:57:20','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (6,'java23','$2a$10$amdO5mSGEHjOYmKOw5chhOVxByzuDHW9yVjBAC9coZQjQOfahm6te','최자바','java1@java.com','010-1234-1234','자바최1','hairstylist',0,'null',to_date('22/10/04 10:48:55','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (7,'java1242','$2a$10$1IeZ7YeAig/F5l8FHuVG9usybV.PjTtEC4xPUc4zKL6thoLFKLV6S','최자바','java1@java.com','010-1234-1234','자바최','trainer',0,'null',to_date('22/10/04 10:56:58','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (8,'java76','$2a$10$rie/5C0/TcnSp1iTRka3GuwDmOnYhYu9ajuYvG3NoIkkciRLAJCEm','최자바','java1@java.com','010-1234-1234','자바최1','manager',0,'null',to_date('22/10/04 11:00:15','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (23,'bum02','$2a$10$gGm.2Ib5XmuD2UrHwKsSMOcyUFMyHuMoyHvq5E1we/2fZpM7zjucy','신짱구','java1@java.com','010-1234-1234','짱구','보류',0,'null',to_date('22/10/04 16:39:19','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (24,'bum03','$2a$10$/3ue3c0z7cSvIc.VVV6DPevSmv5QpAjYg2j1ON9mmXAD3Y8NcUHE6','신짱구','java@java.com','010-1234-1234','짱구','보류',0,'null',to_date('22/10/04 16:42:35','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (26,'bum05','$2a$10$GsLLQ4zQkgVfRCVBpmSiEuXxaUs7jV7pwb0kPuBt7GRbwxf2agOO2','신짱구','java1@java.com','010-1234-1234','짱구','보류',0,'null',to_date('22/10/04 17:03:26','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (28,'bum07','$2a$10$sodMHoD9eoDbQdXhU/Kl/eADUliP6txs9eJL2nNhqvzA0Seb5z3Ee','신짱구1','java@java.com','010-1234-1234','짱구1','보류',0,'null',to_date('22/10/04 17:24:52','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (29,'bum08','1234','신짱구2','java@java.com','010-1234-1234','짱구2','보류',0,'null',to_date('22/10/04 17:27:55','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (30,'..','$2a$10$P.fjxoFcS0pmzQpUyRXOAu3VJKjlpF9b0n4J9RL5zSgCXcPHw0qjO','영준띠','java@java.com','010-1234-1234','영준띠','보류',0,'null',to_date('22/10/04 17:45:28','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (32,'1234','$2a$10$KVNQTme5MQcSPbh7vPUEau9Qs3r2RaFnYXXpo3qnhInJmDeBqV.Ju','1234','123@1234','1234','1234','보류',0,'null',to_date('22/10/05 11:23:55','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (38,'123','$2a$10$n2FMStcG709E/0cfC3.bAu6OnYkZxX9I7S09buxRZK9tuzjSIH3Re','123','123@12344','123','123','보류',0,'null',to_date('22/10/13 10:06:14','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (1,'java1','1234','최자바','java@java.com','010-1234-1234','자바최','자바최',0,'null',to_date('22/09/30 12:57:30','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (2,'java11','1234','최자바1','java1@java.com','010-1234-1234','자바최1','owner',0,'null',to_date('22/09/30 12:59:39','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (16,'java55','$2a$10$xJGtX1e9hLPOF8nABePEc.lSXwiyuWqGeSoyDnQPIfys4QjeNhO2C','최자바','java@java.com','010-1234-1234','자바최','null',0,'null',to_date('22/10/04 15:46:15','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (18,'java56','$2a$10$zsVGPebtyqV.EzLfFrRmkOFp32xtYjrHqr36S1jmBNiC0HSLy/VUK','최자바','java@java.com','010-1234-1234','자바최','null',0,'null',to_date('22/10/04 15:51:15','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (5,'fucku','1234','fuck','heroof@fuckingtitan','1234567890','u','owner',0,'null',to_date('22/09/30 16:10:11','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (9,'java462','$2a$10$ovBcgw4Tm6ka6/kxruiiwOmkkZzP7nmPZXYt5WSAD2L06KU.ksk3m','최자바','java1@java.com','010-1234-1234','자바최1','trainer',0,'null',to_date('22/10/04 11:02:15','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (22,'bum01','$2a$10$523Vcq3654gbPF/yu2v5YOzcmvvdkuJRRZSodcmV77br.fbP1S4ZK','신짱구','java@java.com','010-1234-1234','짱구','보류',0,'null',to_date('22/10/04 16:19:39','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (3,'java2','1234','최자바1','java@java.com','010-1234-1234','자바최1','owner',0,'null',to_date('22/09/30 15:38:08','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (21,'java77','$2a$10$UFqm1JPYDZy7XKO5geOk5.qH6tncQpGiyggOD7Uc2vOE4tumhaUq.','최자바','java@java.com','010-1234-1234','자바최','null',0,'null',to_date('22/10/04 16:09:32','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (25,'bum04','$2a$10$m.XJ6MHwvz3vacl1kTs4JOOCtraVf3W1X1XS3I4rn5Kzwnr0m8Dmq','최자바','java@java.com','010-1234-1234','자바최','보류',0,'null',to_date('22/10/04 16:51:42','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (37,'bum123','1111','최범석','cqt95@naver.com','010-1234-1234','가을이','보류',0,'null',to_date('22/10/11 16:13:56','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (11,'java132','$2a$10$VVi6/gbSW76kOe0Ng5Ravesccgy88AUr2/oFhUiwEQ67mHw7IOCTO','최자바','java1@java.com','010-2873-5452','자바최','trainer',0,'null',to_date('22/10/04 11:04:57','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (13,'java1123','$2a$10$vOhnBljrdFEzewGxSUjVg.AMefvRh0Z2xXbdLI4aL66Ci/qUJgcX2','최자바','java1@java.com','010-1234-1234','자바최','owner',0,'null',to_date('22/10/04 11:06:01','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (31,'bum11','nsmhhzrzyvws','김영준','java@java.com','010-1234-1234','조성민','보류',0,'null',to_date('22/10/05 10:12:00','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (35,'bum44','$2a$10$EbWLzlJy7U5e21b8Q6xvqerOI/3AtHqRSia/RMgLjFnxc/h54fCY.','최자바','wings425@naver.com','010-1234-1234','성민조','보류',0,'null',to_date('22/10/05 18:50:32','RR/MM/DD HH24:MI:SS'));
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (10,'sdfsdf','sdfsdf',to_date('22/10/11 18:24:36','RR/MM/DD HH24:MI:SS'),2.5,'67BF2EE5E3C04A54B9C56957B07C2400.png','bum44');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (8,'새로운','글써보기sdfsdffff',to_date('22/10/11 14:45:31','RR/MM/DD HH24:MI:SS'),28,'2CEC8B15EF8D44D28075EFC1C86BBACD.png','bum44');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (4,'공지공지','좋은 하루.',to_date('22/10/11 09:40:17','RR/MM/DD HH24:MI:SS'),6,null,'bum44');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (5,'공지지','좋은 하루.',to_date('22/10/11 09:40:22','RR/MM/DD HH24:MI:SS'),4,null,'bum44');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (2,'회원가입 공지사항','비밀번호를 입력안할시 영구 퇴장',to_date('22/10/07 17:53:01','RR/MM/DD HH24:MI:SS'),2,null,'bum44');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (3,'훈련사 공지사항','베스트 훈련사 상금 정보ㅎㅎㅎ',to_date('22/10/07 17:53:21','RR/MM/DD HH24:MI:SS'),2,'7502C376576D4137B310DE7664908F07.png','bum44');
REM INSERTING into PAY
SET DEFINE OFF;
REM INSERTING into PERSISTENT_LOGIN
SET DEFINE OFF;
REM INSERTING into PERSISTENT_LOGINS
SET DEFINE OFF;
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (14,'dog.jpg','훈련사 질문을','내용수정:하나 작성해볼까요?fff',to_date('22/10/11 14:34:54','RR/MM/DD HH24:MI:SS'),18.5,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (23,'5C1F89D6750D44019B96B621B67D101D.png','asdfasf','asdfsfd',to_date('22/10/11 16:18:59','RR/MM/DD HH24:MI:SS'),47,'1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (13,null,'아직두','술로',to_date('22/10/11 11:41:59','RR/MM/DD HH24:MI:SS'),1,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (1,'dog.jpg','질문사항','많은 질문이 있습니다.',to_date('22/10/11 09:38:01','RR/MM/DD HH24:MI:SS'),0,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (2,'dog.jpg','오늘도','좋은 하루.',to_date('22/10/11 09:38:36','RR/MM/DD HH24:MI:SS'),0,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (3,'dog.jpg','하지만','좋은 하루.',to_date('22/10/11 09:38:46','RR/MM/DD HH24:MI:SS'),1,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (4,'dog.jpg','훈련사 하려면','좋은 하루.',to_date('22/10/11 09:38:55','RR/MM/DD HH24:MI:SS'),1,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (21,'B81D598C0144444C881DAF19EFBF855C.png','나도 가능 ??','123123',to_date('22/10/11 15:41:58','RR/MM/DD HH24:MI:SS'),20.5,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (17,'A3D8DEBF660A4271A656DC873B894357.png','ggggg','sdfsdf',to_date('22/10/11 15:18:12','RR/MM/DD HH24:MI:SS'),11,'bum44');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (20,'A9887F3B8063457B866491FCFAF7D404.png','귀여운','강아지',to_date('22/10/11 15:35:33','RR/MM/DD HH24:MI:SS'),5,'bum44');
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (4,1,'좋은 훈련사에요!',5,to_date('22/09/30 11:41:04','RR/MM/DD HH24:MI:SS'),'dog.jpg',1,1);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (15,35,'최적화 할라면 시간이 없어',5,to_date('22/10/12 16:17:59','RR/MM/DD HH24:MI:SS'),'dog.jpg',0,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (5,1,'별론데',5,to_date('22/10/04 11:27:17','RR/MM/DD HH24:MI:SS'),'dog.jpg',1,1);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (6,1,'좋네요',5,to_date('22/10/04 11:27:24','RR/MM/DD HH24:MI:SS'),'dog.jpg',1,1);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (1,1,'별로',5,to_date('22/10/04 11:27:29','RR/MM/DD HH24:MI:SS'),'dog.jpg',1,1);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (2,1,'ㅋㅋ',5,to_date('22/10/04 11:27:33','RR/MM/DD HH24:MI:SS'),'dog.jpg',1,1);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (3,1,'ㅋㅋㅋㅋ',5,to_date('22/10/04 11:27:39','RR/MM/DD HH24:MI:SS'),'dog.jpg',1,1);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (7,1,'ㅋㅋㅋㅋ',5,to_date('22/10/04 11:31:57','RR/MM/DD HH24:MI:SS'),'dog.jpg',2,1);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO) values (8,1,'ㅋㅋㅋㅋ',2,to_date('22/10/04 16:24:46','RR/MM/DD HH24:MI:SS'),'dog.jpg',1,1);
REM INSERTING into TRAINER
SET DEFINE OFF;
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (9,38,0,100000,'3년 경력의 강아지 입질 전문 훈련사 입니다.','강아지 입질훈련 +50000만','없음',null,0,14,0,to_date('22/10/13 12:51:18','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (10,32,0,123,'123','<h2><span style="font-family:Arial,Helvetica,sans-serif">oh레와 카미니 나루!! JOJO!!</span></h2>
','123',null,0,123,0,to_date('22/10/13 18:40:10','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (1,1,1,1234,'123','444','123','12345-5',0,4,1234,to_date('22/10/05 18:32:59','RR/MM/DD HH24:MI:SS'),5,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (2,2,1,123,'성민추가','ggg','노자격증','12345-4',0,5,1234,to_date('22/10/05 18:33:01','RR/MM/DD HH24:MI:SS'),4,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (6,3,null,120000,'성민','444','없습니다.',null,0,4,0,to_date('22/10/13 10:44:33','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (8,3,null,120000,'성민','444','없습니다.',null,0,4,0,to_date('22/10/13 10:50:21','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (3,35,1,1234,'성민민','ggg','노자격증','12345-5',0,5,1234,to_date('22/10/11 16:37:05','RR/MM/DD HH24:MI:SS'),3,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (4,36,1,1235,'성민민','ggg','노자격증','12345-5',0,5,1234,to_date('22/10/11 16:37:20','RR/MM/DD HH24:MI:SS'),2,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (5,37,1,2000,'성민스','ggg','노자격증','12345-5',0,5,1234,to_date('22/10/11 16:37:29','RR/MM/DD HH24:MI:SS'),1,0);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("N_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("N_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" ADD PRIMARY KEY ("N_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" MODIFY ("Q_TITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("Q_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNA" ADD PRIMARY KEY ("Q_NO")
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
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADDRESS" ADD PRIMARY KEY ("A_NO")
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
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("M_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_PW" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_PHONE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD PRIMARY KEY ("M_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table HAIRSTYLIST
--------------------------------------------------------

  ALTER TABLE "HAIRSTYLIST" MODIFY ("H_SELF" NOT NULL ENABLE);
  ALTER TABLE "HAIRSTYLIST" MODIFY ("H_SEL" NOT NULL ENABLE);
  ALTER TABLE "HAIRSTYLIST" ADD PRIMARY KEY ("H_NO")
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
--  Constraints for Table ESTIMATE
--------------------------------------------------------

  ALTER TABLE "ESTIMATE" ADD PRIMARY KEY ("E_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "PAY" ADD PRIMARY KEY ("P_ORDER")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAINER
--------------------------------------------------------

  ALTER TABLE "TRAINER" MODIFY ("T_SELF" NOT NULL ENABLE);
  ALTER TABLE "TRAINER" MODIFY ("T_SEL" NOT NULL ENABLE);
  ALTER TABLE "TRAINER" ADD PRIMARY KEY ("T_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTH
--------------------------------------------------------

  ALTER TABLE "AUTH" ADD CONSTRAINT "M_NO_FK" FOREIGN KEY ("M_NO")
	  REFERENCES "MEMBER" ("M_NO") ENABLE;
