-- 대한민국에 거주하는 고객의 이름과 도서를 주문한 고객의 이름 검색
-- join은 쓰지 않고 union을 사용
SELECT * FROM customer;

-- 대한민국에 거주하는 고객의 이름
SELECT name
FROM customer
WHERE address LIKE '%대한민국%';

-- 도서를 주문한 고객의 이름
SELECT name
FROM orders ord, customer cus
WHERE cus.custid = ord.custid;

-- 집합 연산(더하기) - UNION : 중복 불가
SELECT name
FROM customer
WHERE address LIKE '%대한민국%'
UNION
SELECT name
FROM orders ord, customer cus
WHERE cus.custid = ord.custid;

-- UNION ALL - 중복 허용
SELECT name
FROM customer
WHERE address LIKE '%대한민국%'
UNION ALL
SELECT name
FROM orders ord, customer cus
WHERE cus.custid = ord.custid;
