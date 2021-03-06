SELECT USER
FROM DUAL;
--==>> SCOTT

--○ MEMBERLIST 테이블 생성
CREATE TABLE MEMBERLIST
( ID        VARCHAR2(20)
, PW        VARCHAR2(20)
, NAME      VARCHAR2(50)
, TEL       VARCHAR2(50)
, EMAIL     VARCHAR2(100)
, CONSTRAINT MEMBERLIST_ID_PK PRIMARY KEY(ID)
);
--==>> Table MEMBERLIST이(가) 생성되었습니다.

--○ MEMBERLIST 데이터 입력
INSERT INTO MEMBERLIST(ID, PW, NAME, TEL, EMAIL)
VALUES('superman', CRYPTPACK.ENCRYPT('1234567', '1234567'), '최철녕', '010-1111-1111', 'ccn@test.com');
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO MEMBERLIST(ID, PW, NAME, TEL, EMAIL)
VALUES('superwoman', CRYPTPACK.ENCRYPT('java006$', 'java006$'), '주한별', '010-2222-2222', 'jhb@test.com');
--==>> 1 행 이(가) 삽입되었습니다.
DROP TABLE MEMBERRECORD;
DROP TABLE MEMBERLIST;
--○ MEMBERRECORD 테이블 생성
CREATE TABLE MEMBERRECORD
( KOR   NUMBER(3)
, ENG   NUMBER(3)
, MAT   NUMBER(3)
, ID    VARCHAR2(20)
, CONSTRAINT MEMBERRECORD_KOR_CK CHECK(KOR>=0 AND KOR<=100)
, CONSTRAINT MEMBERRECORD_ENG_CK CHECK(ENG>=0 AND ENG<=100)
, CONSTRAINT MEMBERRECORD_MAT_CK CHECK(MAT>=0 AND MAT<=100)
, CONSTRAINT MEMBERRECORD_ID_FK FOREIGN KEY(ID)
             REFERENCES MEMBERLIST(ID) ON DELETE CASCADE
);
--==>> Table MEMBERRECORD이(가) 생성되었습니다.

--○ MEMBERRECORD 데이터 입력
INSERT INTO MEMBERRECORD(KOR, ENG, MAT, ID)
VALUES(90, 80, 70, 'superman');
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO MEMBERRECORD(KOR, ENG, MAT, ID)
VALUES(90, 80, 71, 'superwoman');

--○ 커밋
COMMIT;
--==>> 커밋 완료.

select * from memberlist;


--○ 멤버리스트 뷰 정의 
CREATE OR REPLACE VIEW MEMBERLIST_VIEW
AS
SELECT ID, PW, NAME, TEL, EMAIL, 
(SELECT KOR FROM MEMBERRECORD WHERE ID = M.ID) AS KOR
,(SELECT ENG FROM MEMBERRECORD WHERE ID = M.ID) AS ENG
,(SELECT MAT FROM MEMBERRECORD WHERE ID = M.ID) AS MAT
FROM MEMBERLIST M;

COMMIT;



--○ 멤버 전체 리스트 출력 
SELECT ID, PW, NAME, TEL, EMAIL, KOR, ENG, MAT, (KOR+ENG+MAT) AS TOT, TRUNC((KOR+ENG+MAT)/3,2) AS AVG  FROM MEMBERLIST_VIEW
;
-- ○ 멤버 정보 입력 
INSERT INTO MEMBERLIST(ID, PW, NAME, TEL, EMAIL) VALUES('11', CRYPTPACK.ENCRYPT('1234567', '1234567'), '최철녕', '010-1111-1111', 'ccn@test.com')
;

--○ 멤버 정보 수정
UPDATE MEMBERLIST SET PW = CRYPTPACK.ENCRYPT('1234567', '1234567'), NAME = '김철녕', TEL='010-2222-2222', EMAIL = 'cck@test.com' WHERE ID = 'superman';

--○ 멤버 정보 삭제
DELETE FROM MEMBERLIST WHERE ID = '11';

--○ 멤버 정보 검색
SELECT ID, PW, NAME, TEL, EMAIL, KOR, ENG, MAT, (KOR+ENG+MAT) AS TOT, TRUNC((KOR+ENG+MAT)/3,2) AS AVG  FROM MEMBERLIST_VIEW WHERE ID='superman';

---------------------- 성적관련------------------------

--<성적>

--○ 성적 입력
INSERT INTO MEMBERRECORD(KOR, ENG, MAT, ID) VALUES(50, 80, 70, 'superman1')
;

--○ 성적 삭제
DELETE FROM MEMBERRECORD WHERE ID='superwoman'
;

--○ 성적 수정
UPDATE MEMBERRECORD SET KOR = 50,ENG=100,MAT=30 WHERE ID='superwoman'
;

--○ 로그인 
SELECT NAME
FROM MEMBERLIST
WHERE ID = 'superman' AND PW = CRYPTPACK.ENCRYPT('1234567','1234567');


COMMIT;
ROLLBACK;

select * from memberlist;

delete from memberlist where id='superman';

DELETE FROM MEMBERLIST WHERE ID = 'superwoman';                                                                                                                                                                   
