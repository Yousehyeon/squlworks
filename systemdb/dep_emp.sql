--�μ� ���̺�� ������̺� ����(JOIN)
--JOIN - 1�� �̻��� ���̺��� ����Ǵ� �ű��

SELECT * FROM dept;
SELECT * FROM employee;

--�����ȣ, �����, �μ���ȣ, �μ����� ����Ͻÿ�
SELECT emp.empno, emp.ename,  emp.deptno, emp.sal, dep.deptname
FROM employee emp, dept dep
WHERE emp.deptno = dep.deptno;