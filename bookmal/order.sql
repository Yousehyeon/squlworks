-- order 테이블(주문번호, 고객번호, 도서번호, 판매가격, 주문일)
CREATE TABLE orders(
    orderid NUMBER PRIMARY KEY,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,
    -- 외래키 설정
    CONSTRAINT cus_fk1 FOREIGN KEY (custid)
    REFERENCES customer(custid),
    CONSTRAINT book_fk1 FOREIGN KEY(bookid)
    REFERENCES book(bookid)
);


--orders 자료 삽입
INSERT INTO orders VALUES (1, 1, 1, 6000, To_DATE('2016-07-01', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (2, 1, 3, 21000, To_DATE('2016-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (3, 2, 5, 8000, To_DATE('2016-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (4, 3, 6, 6000, To_DATE('2016-07-04', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (5, 4, 7, 20000, To_DATE('2016-07-05', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (6, 1, 2, 12000, To_DATE('2016-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (7, 4, 8, 13000, To_DATE('2016-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (8, 3, 10, 12000, To_DATE('2016-07-08', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (9, 2, 10, 7000, To_DATE('2016-07-09', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (10, 3, 8, 13000, To_DATE('2016-07-10', 'YYYY-MM-DD'));

SELECT * FROM orders;

--고객이 주문한 도서의 총 판매액을 구하시오
SELECT SUM(saleprice) 총판매액
FROM orders;

--서점의 도서 판매 건수를 구하시오
SELECT COUNT(*) 총판매건수
FROM orders;

-- 2번 고객(김연아)이 주문한 도서의 총 판매액을 구하시오
SELECT *
FROM orders
WHERE custid = 2;


SELECT SUM(saleprice) 총매출
FROM orders
WHERE custid = 2;

-- 가격이 8000원 이상인 도서를 구매한 고객별 주문도서의 총 수량을 구하시오
--단, 2거ㅜㄴ 이상 구매한 고객만 찾으시오.
SELECT custid, COUNT(*) 총수량
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING COUNT(*) >=2;

--조인(1개 테이블 이상 연결하는 기법)
SELECT cus.name,ord.saleprice, ord.orderdate
FROM orders ord, customer cus
WHERE ord.custid = cus.custid
AND cus.name = '김연아';

-- 고객별로 주문한 도서의 총 판매액을 구하시오
-- 집계를 구할때는 GROUP BY절 사용, 조건은 HAVING절 사용
-- HAVING 절은 - GROUP BY의 질의 결과 나타내는 그룹을 제한하는 역할
SELECT cus.name, SUM(ord.saleprice)
FROM orders ord, customer cus
WHERE ord.custid = cus.custid
GROUP BY cus.name
HAVING cus.name = '박지성';
