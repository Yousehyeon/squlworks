--�ǽ� ����
--1.
SELECT name,address
FROM customer;

--2.
SELECT name, address, phone
FROM customer;

--3.
SELECT *
FROM customer
WHERE address LIKe '%����%';

--4.
SELECT *
FROM customer
WHERE name in ('�迬��','�Ȼ�');

--5.
SELECT address
FROM customer
WHERE adrress NOT LIKE '%���ѹα�%';

--6.
SELECT *
FROM customer
WHERE phone is null;

--7.
SELECT *
FROM customer ORDER BY NAME

--8.
SELECT OCUNT(*) ���ο��� FROM customer;















