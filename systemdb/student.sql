-- �а� ���̺�
CREATE TABLE tbl_class(
    cid NUMBER(3),
    cname VARCHAR2(30) NOT NULL,
    ctel VARCHAR2(15) NOT NULL,
    clocation VARCHAR2(20) NOT NULL,
    PRIMARY KEY(cid)
    );

--�а� �ڷ� ����
INSERT INTO tbl_class VALUES (101, '����Ʈ�����а�', '02-1234-1234', 'B�� 3��');
INSERT INTO tbl_class VALUES (102, 'ȭ�а��а�', '02-1234-4567', 'B�� 4��');
INSERT INTO tbl_class VALUES (103, '�������ڰ��а�', '02-1234-5678', 'B�� 5����');

