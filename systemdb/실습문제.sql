--실습 문제
--1.
SELECT name,address
FROM customer;

--2.
SELECT name, address, phone
FROM customer;

--3.
SELECT *
FROM customer
WHERE address LIKe '%영국%';

--4.
SELECT *
FROM customer
WHERE name in ('김연아','안산');

--5.
SELECT address
FROM customer
WHERE adrress NOT LIKE '%대한민국%';

--6.
SELECT *
FROM customer
WHERE phone is null;

--7.
SELECT *
FROM customer ORDER BY NAME

--8.
SELECT OCUNT(*) 총인원수 FROM customer;















