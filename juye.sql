SELECT MEMBER_NO, MEMBER_EMAIL, MEMBER_NM ,MEMBER_TEL,
       		MEMBER_ADDR, PROFILE_IMG, 
    		TO_CHAR( ENROLL_DT, 'YYYY-MM-DD HH24:MI:SS') AS ENROLL_DT, MEMBER_PW, MEMBER_TYPE
FROM MEMBER
WHERE MEMBER_EMAIL = 'user01@kh.or.kr'
AND SECESSION_FL = 'N' ;



-- 카카오 로그인 회원 정보 조회
SELECT * FROM MEMBER
WHERE MEMBER_EMAIL = 'kjy_1615@naver.com'
AND SECESSION_FL = 'N';


-- 카카오 로그인 시 비밀번호가 null 인가 조회 ANIMAL_DETAIL
SELECT * FROM MEMBER
WHERE MEMBER_EMAIL = 'kakao@user.com';


-- 카카오 로그인 시 처음 로그인한 회원의 정보 삽입TEST
INSERT INTO MEMBER 
VALUES(SEQ_MEMBER_NO.NEXTVAL,'kakao3@user.com',NULL,'kakaoname',null,
		DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);

-- 멤버 타입 변경 
UPDATE MEMBER SET
MEMBER_TYPE = 'K'
WHERE MEMBER_NO ='46';


-- MEMBER_TEL - NOT NULL 제약조건 빼기
ALTER TABLE "MEMBER"
MODIFY "MEMBER_TEL" NULL;

-- MEMBER_PW - NOT NULL 제약조건 빼기
ALTER TABLE "MEMBER"
MODIFY "MEMBER_PW" NULL;

-- 카카오 로그인 멤버 타입 - 플래그 K 넣기
-- 제약조건 조회
SELECT * FROM ALL_CONSTRAINTS WHERE TABLE_NAME = 'MEMBER';

-- memberType 체크 제약조건 (SYS_C0021379) 삭제 후 재생성
ALTER TABLE "MEMBER" DROP CONSTRAINT SYS_C0021379; 

ALTER TABLE "MEMBER" ADD CHECK("MEMBER_TYPE" IN ('M','A','K'));


-- 비밀번호 조회
SELECT MEMBER_PW FROM MEMBER
WHERE MEMBER_NO = 7;

-- 회원탈퇴
UPDATE MEMBER SET
SECESSION_FL = 'Y'
WHERE MEMBER_NO = 7;

UPDATE MEMBER SET
SECESSION_FL = 'N'
WHERE MEMBER_NO = 7;


-- 인증 테이블 생성
CREATE TABLE CERTIFICATION(
	EMAIL VARCHAR2(100) PRIMARY KEY, --한 이메일로 발급 받은 인증번호가 계속 업데이트
	C_NUMBER CHAR(6) NOT NULL,
	ISSUE_DT DATE DEFAULT SYSDATE

);

-- rlawndp@hamail.net 123456
-- rlawndp@hamail.net 234567 -> UPDATE

-- 인증번호 수정
UPDATE CERTIFICATION SET
C_NUMBER = ?,
ISSUE_DT = SYSDATE
WHERE EMAIL = ?;

-- 인증번호 생성
INSERT INTO CERTIFICATION VALUE(이메일,인증번호,SYSDATE);

-- 인증번호 조회
SELECT * FROM CERTIFICATION;


SELECT count(EMAIL) FROM CERTIFICATION
WHERE EMAIL = 'rlawndp@hanmail.net';


-- 일정시간 지난 후 조회
--> 인증번호 발급시간 + 5분 == 발급받은지 5분이 지남 == 인증번호 만료
--> (INTERVAL '숫자' HOUR|MINUTE|SECOND)
SELECT TO_CHAR(SYSDATE+(INTERVAL '5' MINUTE), 'YYYY-MM-DD HH24:MI:SS')
FROM DUAL;

-- 발급시간 + 5분 < 현재시간 == 만료 
--  ex) 17:03 + 5분 == 17:08 < 17:11
-- 발급시간 + 5분 > 현재시간 == 인증가능시간
--  ex) 17:03 + 5분 == 17:08 > 17:06

-- NVL(A,B) : A가 NULL이면 B를 반환

ELECT 
   -- 이메일, 인증번호가 일치하는 행이 있는지를 찾음 -> 있으면 1, 없으면 NULL
   --> 1이면 THEN 구문 수행  , NULL이면 ELSE 수행
   CASE WHEN (SELECT '1' FROM CERTIFICATION
               WHERE EMAIL = 'rlawndp@hanmail.net'
               AND C_NUMBER = 'IH35VX')  = 1
   
      THEN NVL( (SELECT '1' FROM CERTIFICATION
                  WHERE EMAIL = 'rlawndp@hanmail.net'
                  AND ISSUE_DT + (INTERVAL '5' MINUTE) >= SYSDATE) , '2') 

      ELSE '3'	
   END			
FROM DUAL;


SELECT 
   CASE WHEN (SELECT '1' FROM CERTIFICATION
            WHERE EMAIL = ?
            AND C_NUMBER = ?)  = 1
   
      THEN NVL( (SELECT '1' FROM CERTIFICATION
            WHERE EMAIL = ?
            AND ISSUE_DT + (INTERVAL '5' MINUTE) >= SYSDATE) , '2') 

      ELSE '3'	
   END			
FROM DUAL;