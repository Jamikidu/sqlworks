--회원 테이블 생성
CREATE TABLE t_member(
    memberid    VARCHAR2(20) PRIMARY KEY,
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(10),
    joindate    DATE DEFAULT SYSDATE

);

CREATE TABLE t_board(
    bnum        NUMBER(4) PRIMARY KEY,
    title       VARCHAR2(100) NOT NULL,
    content     VARCHAR2(2000) NOT NULL,
    regdate     TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate  TIMESTAMP,
    hit         NUMBER DEFAULT 0,
    memberid    VARCHAR2(20) NOT NULL,
    CONSTRAINT FK_MemberBoard FOREIGN KEY(memberid)
    REFERENCES t_member(memberid) ON DELETE CASCADE
);
-- 글번호, 글제목, 글내용, 작성일, 수정일, 조회수, 아이디(외래키)
-- 자동 순번(SEQUENCE) 전체 코드(CACHE 기본값 20 -캐시 사용안함)
CREATE SEQUENCE b_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE;

// 파일 업로드 칼럼 추가
ALTER TABLE t_board ADD fileupload VARCHAR2(100);

INSERT INTO t_member(memberid, passwd, name, gender)
VALUES ('cloud', 'm12345', '강정현', '남');

INSERT INTO t_board(bnum, title, content, memberid)
VALUES (b_seq.NEXTVAL, '가입인사', '안녕하세요. 반갑습니다.', 'cloud');

SELECT * FROM t_member;
SELECT * FROM t_board;

--id 중복 체크
SELECT COUNT(*) AS result FROM t_member WHERE memberid = 'cloud';

--id 중복 체크
SELECT DECODE(COUNT(*), 1, 'true', 'false') AS result FROM t_member WHERE memberid = 'cloud';

--페이지 처리
SELECT ROWNUM, t_board.* 
FROM t_board
WHERE ROWNUM >=1 AND ROWNUM <=10
ORDER BY bnum DESC;

--페이지 처리(인라인뷰 - 중첩쿼리(서브쿼리))
SELECT *
FROM (SELECT ROWNUM RN, t_board.* 
FROM t_board ORDER BY bnum DESC)
WHERE RN >=11 AND RN <=20;  --별칭(RN)을 사용해야 가능
--ORDER BY bnum DESC;

-- 총 행의 수
SELECT COUNT(*) FROM t_board;


DROP SEQUENCE b_seq;
DROP TABLE t_board;

COMMIT;