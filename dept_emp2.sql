SELECT * FROM dept;

SELECT * FROM employee;

DELETE FROM dept
WHERE deptno = '1000';

--employee ���̺� �ܷ�Ű ���� ���ǿ��� 
-- ON DELETE CASCADB �������� �߰�
--1. �ܷ�Ű ���� ���� �����ϱ�
ALTER TABLE employee DROP CONSTRAINT emp_fx;

--2.ON DELETE CASCADE �������� �߰�
ALTER TABLE employee ADD CONSTRAINT emp_fx
FOREIGN KEY(deptno) REFERENCES dept(deptno)
ON DELETE CASCADE;
desc dept;