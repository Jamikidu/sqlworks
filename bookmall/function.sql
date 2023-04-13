-- 숫자 타입 함수
-- 제공된 테이블 : dual
SELECT ABS(-10), ABS(10) FROM dual;

-- 반올림 : ROUND(수, 자리수)
SELECT ROUND(3.875,1) FROM DUAL;

-- sal을 30으로 나눈후 소수 자리수에 따라 반올림한 값 출력
SELECT sal 급여,
       sal/30 일급,
       ROUND(sal/30, 1) 결과1,
       ROUND(sal/30, 0) 결과2,
       ROUND(sal/30, -1) 결과3
FROM employee;

-- sal을 30으로 나눈후 소수 자리수에 따라 절삭(버림) 값 출력
SELECT sal 급여,
       sal/30 일급,
       TRUNC(sal/30, 1) 결과1,
       TRUNC(sal/30, 0) 결과1,
       TRUNC(sal/30, -1) 결과1
FROM employee;

--고객별 평균 주문 금액을 백원 단위로 반올림한 값을 구하시오
SELECT custid 고객번호 , ROUND(AVG(saleprice), -2) 평균주문금액
FROM orders
GROUP BY custid;

SELECT custid 고객번호 , ROUND(SUM(saleprice)/COUNT(*)) 평균금액
FROM orders
GROUP BY custid;

SELECT * FROM customer;

--문자 타입 함수
SELECT LOWER ('ABCD') RESULT FROM DUAL;

-- SUBSTR(문자, 인덱스, 글자수)
SELECT SUBSTR('ABC', 1, 2) RESILT FROM DUAL;
-- REPLACE(문자,이전문자, 새로운문자)
SELECT REPLACE('ABC', 'A', 'E') RESULT FROM DUAL;
-- CONCAT(문자1, 문자2) - 문장 연결
SELECT CONCAT('A', 'B') RESULT FROM DUAL;
-- 연결연산자 - '||'
SELECT '안녕' || '하세요' RESULT FROM DUAL;
-- LPAD(문자, 문자수, 기호) - 기호를 왼쪽부터 채움
SELECT LPAD('cloud', 10, '*') RESULT FROM DUAL;
-- 부서이름에서 처음부터 시작해서 2개의 문자 출력
SELECT SUBSTR(deptname, 1, 2) 부서명
FROM DEPT;

-- 도서 제목에 '야구'가 포함된 도서를 '농구'로 변경하여 검색
SELECT bookid, REPLACE(bookname, '야구', '농구') bookname
FROM book;

-- 굿스포츠에서 출판한 도서의 제목과 제목의 문자 수, 바이트 수를 검색
-- 한글 3Byte, 영어, 특수기호 - 1Byte
SELECT bookname,
       LENGTH(bookname) 문자수
FROM book
WHERE publisher = '굿스포츠';

-- 날짜 함수
-- 20일전의 날짜 출력
SELECT SYSDATE -20 FROM DUAL;

-- 3개월 후의 날짜 출력
SELECT ADD_MONTHS(SYSDATE, 3) 결과
FROM DUAL;
-- 3개월 전의 날짜 출력
SELECT ADD_MONTHS('2023/04/01', -3) 결과
FROM DUAL;
-- 날짜와 시간
SELECT SYSTIMESTAMP FROM DUAL;

-- 주문번호가 6에서 10사이인 도서의 주문일에 3개월을 더한값을 구하시오.
-- 1. 주문번호가 6~10인 도서 검색
-- 2. 주문일에 3개월 더하기
SELECT orderid 주문번호,
       ADD_MONTHS(orderdate, 3) 더하기결과,
       ADD_MONTHS(orderdate, -3) 빼기결과
FROM orders WHERE orderid BETWEEN 6 AND 10;

-- 주문번호가 10인 도서의 주문일로부터 오늘까지의 총 개월수를 구하시오
-- MONTHS_BETWEEN(나중날짜, 이전날짜)
SELECT orderid 주문번호, orderdate 주문날짜,
        TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate)) 총개월수
FROM orders
WHERE orderid = 10;

-- 서점은 주문일로부터 10일후 매출을 확정한다. 각 주문의 확정일자를 구하시오.
SELECT orderid 주문번호, orderdate 주문일, orderdate + 10 확정일
FROM orders;

-- 자동 타입 변환
SELECT 1 + '2' FROM DUAL;

-- 수동 타입 변환
-- 문자를 숫자 형식으로 변환
SELECT TO_NUMBER('120') FROM DUAL;

-- 날짜 형식
SELECT TO_DATE('2022-06-30', 'yy-mm-dd') FROM DUAL;

-- 날짜 형식 변환
SELECT TO_CHAR(SYSDATE, 'yyyy-mm-dd') 날짜,
       TO_CHAR(SYSDATE, 'yyyy') 연도,
       TO_CHAR(SYSDATE, 'mm') 월,
       TO_CHAR(SYSDATE, 'dd') 일
FROM DUAL;

-- 시간 형식 변환
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS PM') 시간형식,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS PM') 날짜와시간
FROM DUAL;

-- 고객 이름에서 같은 성을 가진 사람의 인원수를 구하시오
SELECT SUBSTR(name, 1, 1) 성, COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);



