////////////////////////////////////////////////////////////////////////////////
//삭제//

// 캘린더
DROP TABLE CALENDAR;

// Q&A 게시판
DROP SEQUENCE QBSEQ;
DROP TABLE QBOARD;

// Q&A 게시판 댓글
DROP SEQUENCE QASEQ;
DROP TABLE QANSWERBOARD;

// 채팅
DROP SEQUENCE CHAT_LIST_SEQ;
DROP SEQUENCE CHAT_USER_SEQ;
DROP SEQUENCE CHAT_MSG_SEQ;

DROP TABLE CHAT_LIST;
DROP TABLE CHAT_USER;
DROP TABLE CHAT_MSG;

DROP TABLE CHAT_LIST CASCADE CONSTRAINT;
DROP TABLE CHAT_USER CASCADE CONSTRAINT;
DROP TABLE CHAT_MSG CASCADE CONSTRAINT;

// 스터디 게시판
DROP SEQUENCE RBSEQ;
DROP TABLE STUDYGROUP;

// 스터디 게시판 댓글
DROP SEQUENCE RASEQ;
DROP TABLE STUDYANSWERBOARD;

// 타이머
DROP TABLE TIMERSTART;
DROP SEQUENCE STARTNO;
DROP TABLE TIMEREND;
DROP SEQUENCE ENDNO;
DROP TABLE TIMERSUM;
DELETE FROM TIMERSUM;

// 로그인(회원)
DROP TABLE MEMBER;

/////////////////////////////////// 캘 린 더 /////////////////////////////////////

CREATE TABLE CALENDAR(
   ID VARCHAR2(1000) NOT NULL,
   TITLE VARCHAR2(1000) NOT NULL,
   STARTTIME VARCHAR2(1000) NOT NULL,
   ENDTIME VARCHAR2(1000) NOT NULL,
   DESCRIPTION VARCHAR2(4000),
   STYPE VARCHAR2(1000) NOT NULL,
   MEMBERID VARCHAR2(1000) NOT NULL,
   BACKGROUNDCOLOR VARCHAR2(1000) NOT NULL,
   TEXTCOLOR VARCHAR2(1000) NOT NULL,
   allDay VARCHAR2(1000) NOT NULL
);

/////////////////////////////////////     Q & A 게시판  //////////////////////////

CREATE SEQUENCE QBSEQ NOCACHE;
CREATE TABLE QBOARD(
   QBSEQ NUMBER PRIMARY KEY,
   MEMBERID VARCHAR2(1000) NOT NULL,
   TITLE VARCHAR2(2000) NOT NULL,
   QBCOUNT NUMBER NOT NULL,
   QBTAG VARCHAR2(1000) NOT NULL,
   QBDATE DATE NOT NULL,
   QBCONTENT VARCHAR2(4000) NOT NULL,
   QBFILENAME VARCHAR2(4000)
);

//////////////////////////////////     Q & A 게시판 댓글    ////////////////////////

CREATE SEQUENCE QASEQ NOCACHE;
CREATE TABLE QANSWERBOARD(
   QASEQ NUMBER PRIMARY KEY,
   QBSEQ NUMBER,
   QAMEMBERID VARCHAR2(2000),
   QACONTENT VARCHAR2(4000),
   QADATE DATE NOT NULL
);

///////////////////////////////////       로 그 인   //////////////////////////////

CREATE TABLE MEMBER(
   MEMBERID VARCHAR2(1000) PRIMARY KEY,
   MEMBERPW VARCHAR2(1000) NOT NULL,
   NAME VARCHAR2(1000) NOT NULL,
   EMAIL VARCHAR2(1000) UNIQUE,
   FILENAME VARCHAR2(1000),
   MPFILE VARCHAR2(4000) 
);

///////////////////////////////     스터디 게시판     ////////////////////////////////

CREATE SEQUENCE RBSEQ NOCACHE;
CREATE TABLE STUDYGROUP(
   RBSEQ NUMBER PRIMARY KEY,
   MEMBERID VARCHAR2(2000) NOT NULL,
   TITLE VARCHAR2(2000) NOT NULL,
   RBCOUNT NUMBER,
   TAG VARCHAR2(2000) NOT NULL,
   RBDATE DATE,
   RBCONTENT VARCHAR2(2000) NOT NULL,
   GROUPING NUMBER
);

//////////////////////////////   스터디 게시판 댓글    /////////////////////////////////

CREATE SEQUENCE RASEQ NOCACHE;
CREATE TABLE STUDYANSWERBOARD(
   RASEQ NUMBER PRIMARY KEY,
   RBSEQ NUMBER,
   RAMEMBERID VARCHAR2(2000),
   RACONTENT VARCHAR2(4000),
   RADATE DATE NOT NULL
);

//////////////////////////////// 타이머 /////////////////////////////////////////////

CREATE SEQUENCE STARTNO NOCACHE;
CREATE TABLE TIMERSTART(
   STARTNO NUMBER PRIMARY KEY,
   MEMBERID VARCHAR2(1000) NOT NULL,
   START_T DATE NOT NULL
);

CREATE SEQUENCE ENDNO NOCACHE;
CREATE TABLE TIMEREND(
   ENDNO NUMBER PRIMARY KEY,
   MEMBERID VARCHAR2(1000) NOT NULL,
   END_T DATE NOT NULL
);

CREATE TABLE TIMERSUM(
   MEMBERID VARCHAR2(1000) NOT NULL,
   TOTAL_T NUMBER NOT NULL,
   TODAY VARCHAR2(1000) NOT NULL
);

/////////////////////////////////////채팅관련//////////////////////////////////////////


CREATE SEQUENCE CHAT_LIST_SEQ;
CREATE SEQUENCE CHAT_USER_SEQ;
CREATE SEQUENCE CHAT_MSG_SEQ;

CREATE TABLE CHAT_LIST(
CHAT_LIST_NO NUMBER ,
CHAT_LIST_TITLE VARCHAR(1000) NOT NULL,
CHAT_LIST_CREATED_AT DATE DEFAULT SYSDATE,
CHAT_LIST_UPDATED_AT DATE DEFAULT NULL,
CHAT_LIST_BOARD_NO NUMBER,
CHAT_LIST_BOARD_TYPE VARCHAR(4) NOT NULL
);

CREATE TABLE CHAT_USER(
CHAT_USER_NO NUMBER ,
CHAT_USER_CHAT_NO NUMBER NOT NULL,
CHAT_USER_ID VARCHAR(100) NOT NULL,
CHAT_USER_CREATED_AT DATE DEFAULT SYSDATE,
CHAT_USER_UPDATED_AT DATE DEFAULT NULL,
CHAT_USER_KING_YN VARCHAR(4) NOT NULL
);

CREATE TABLE CHAT_MSG(
CHAT_MSG_NO NUMBER ,
CHAT_MSG_USER_ID VARCHAR(100) NOT NULL,
CHAT_MSG_TXT VARCHAR(4000) NOT NULL,
CHAT_MSG_CREATED_AT DATE DEFAULT SYSDATE,
CHAT_MSG_UPDATED_AT DATE DEFAULT NULL,
CHAT_MSG_CHAT_NO NUMBER NOT NULL
);

////////////////////////////////////////////////////////////////////////////////////
//제약조건//

ALTER TABLE CHAT_LIST ADD CONSTRAINT PK_CHAT_LIST PRIMARY KEY (
   CHAT_LIST_NO
);

ALTER TABLE CHAT_USER ADD CONSTRAINT PK_CHAT_USER PRIMARY KEY (
   CHAT_USER_NO
);

ALTER TABLE CHAT_MSG ADD CONSTRAINT PK_CHAT_MSG PRIMARY KEY (
   CHAT_MSG_NO
);



////////////////////////////////////////////////////////////////////////////////////
//INSERT문//

INSERT INTO TIMERSUM VALUES('user1', 120, '20/10/26');
INSERT INTO TIMERSUM VALUES('user1', 240, '20/10/27');
INSERT INTO TIMERSUM VALUES('user1', 360, '20/10/28');
INSERT INTO TIMERSUM VALUES('user1', 500, '20/09/28');
INSERT INTO TIMERSUM VALUES('user1', 200, '20/08/28');
INSERT INTO TIMERSUM VALUES('user1', 900, '20/07/28');
INSERT INTO TIMERSUM VALUES('user1', 1000, '20/06/28');

//////////////////////////////////////////////////////////////////////////////////////
// SELECT문 //

SELECT * FROM TIMERSUM;
SELECT * FROM QBOARD;
SELECT * FROM MEMBER;
SELECT * FROM QANSWERBOARD;
SELECT * FROM STUDYGROUP;
SELECT * FROM STUDYANSWERBOARD;
SELECT * FROM TIMERSTART ORDER BY STARTNO;
SELECT * FROM TIMEREND ORDER BY ENDNO;
SELECT * FROM TIMERSUM;

SELECT * FROM CHAT_USER

