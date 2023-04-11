--��� ���̺�
CREATE TABLE emp(
    --Į�� �̸� �ڷ���
    empno NUMBER(3) PRIMARY KEY,   --�����ȣ
    ename VARCHAR2(20) NOT NULL,   --����̸�
    sa1   NUMBER(10),              --�޿�
    createdate DATE DEFAULT SYSDATE  --�����
);

--����� ���� Į�� �߰�(ALTER ~ ADD Į���̸� �ڷ���)
ALTER TABLE emp gender VARCHAR2(4);

--ename�� �ڷ����� ����  VARCHAR2(10)
ALTER TABLE emp MODIFY gender VARCHAR2(10);

DESC emp;

--��� �߰�
INSERT INTO emp VALUES (100, '�̰�', 2500000, SYSDATE);
INSERT INTO emp VALUES (101, '���', 3000000, SYSDATE);
INSERT INTO emp VALUES (102, '�����', 5000000, SYSDATE);
INSERT INTO emp VALUES (103, '�ڽ���', '', SYSDATE);
INSERT INTO emp VALUES (104, '��õ��', 1500000, SYSDATE,'��');

--��� ��ȸ
SELECT * FROM emp;

--�����ȣ , ����̸�, �޿��� �˻��Ͻÿ�
SELECT empno as ���, ename as �����, sa1 as �޿� FROM emp;

--�޿��� ���� ����� �˻��Ͻÿ�
SELECT * 
FROM emp 
WHERE sa1 IS NULL;  --null�� �ƴ� ����(is not null)

--�޿��� 300������ ���
SELECT *
FROM emp
WHERE sa1 <= 3000000;

--�޿��� 300���� ������ ����� �޿��� ���� ������ �����Ͻÿ�
SELECT *
FROM emp
WHERE sa1 <= 3000000
ORDER BY sa1 DESC;

--�޿��� ���� ������ �����Ͻÿ�
SELECT *
FROM emp
ORDER BY sa1 DESC;

--����� ���� ���Ͻÿ�
SELECT COUNT(*) as �����
FROM emp;

--����� �޿��� �԰�� ���
SELECT SUM(sa1) �޿��հ�, AVG(sa1) �޿����
FROM emp;

--������ '��'�� ����� '����'�� �����Ͻÿ�
--�̸��� ������� ����� �˻��Ͻÿ�
--SELECT * FROM emp
--WHERE ename = '�����';

UPDATE emp SET gender = "����"
WHERE empno = 104;

--�̸��� ������� ��� ����
DELETE FROM emp
WHERE ename = '��õ��';


COMMIT;
--COMMIT ���̸� ���� �����ϳ�
ROLLBACK;