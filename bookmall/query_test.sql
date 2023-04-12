-- 연습 문제(4장 13강)
--1번
SELECT name, address FROM customer;
--2번
SELECT name, address, phone FROM customer;
--3번
SELECT * FROM customer
WHERE address LIKE '%영국%';
--4번
SELECT * FROM customer
WHERE name IN('김연아', '안산');
--5번
SELECT * FROM customer
WHERE address NOT LIKE '%대한민국%';
--6번
SELECT * FROM customer
WHERE phone IS NULL;
--7번
SELECT * FROM customer
ORDER BY name;
--8번
SELECT COUNT(*) 총인원수 FROM customer;