-- order ���̺�(�ֹ���ȣ, ������ȣ, ������ȣ, �ǸŰ���, �ֹ���)
CREATE TABLE orders(
    orderid NUMBER PRIMARY KEY,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,
    -- �ܷ�Ű ����
    CONSTRAINT cus_fk1 FOREIGN KEY (custid)
    REFERENCES customer(custid),
    CONSTRAINT book_fk1 FOREIGN KEY(bookid)
    REFERENCES book(bookid)
);


--orders �ڷ� ����
INSERT INTO orders VALUES (1, 1, 1, 6000, To_DATE('2016-07-01', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (2, 1, 3, 21000, To_DATE('2016-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (3, 2, 5, 8000, To_DATE('2016-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (4, 3, 6, 6000, To_DATE('2016-07-04', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (5, 4, 7, 20000, To_DATE('2016-07-05', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (6, 1, 2, 12000, To_DATE('2016-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (7, 4, 8, 13000, To_DATE('2016-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (8, 3, 10, 12000, To_DATE('2016-07-08', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (9, 2, 10, 7000, To_DATE('2016-07-09', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (11, 6, 8, 13000, To_DATE('2016-07-10', 'YYYY-MM-DD'));