-- �μ� ���̺�(depy)
CREATE TABLE dept(
    -- Į���̸�, �ڷ���
    deptno VARCHAR2(4),
    deptname VARCHAR2(20),
    office VARCHAR2(10)
);
DESC dept;


-- �μ� �߰�
INSERT INTO dept(deptno, deptname, office) VALUES ('1000', '�λ���', '����');
INSERT INTO dept(deptno, deptname, office) VALUES ('1001', '������', '����');
INSERT INTO dept(deptno, deptname, office) VALUES ('1002', 'ȸ����', '����');
INSERT INTO dept(deptno, deptname, office) VALUES ('1003', '������', '');

-- �μ� �ڷ� �˻� / as:��Ī (alias)
SELECT deptname as �μ��� FROM dept;

--Ư���� �ڷ� �˻� : 

--�μ���ȣ�� 1002�� �μ��� 'ȸ����'���� �����ϼ���
UPDATE dept
SET dept = 'ȸ����'
WHERE deptno = '1002';

--�μ� ���̺� ����
DELETE FROM dept
WHERE deptno = '1003';

SELECT * FROM dept;

--�ڷ����� : ORDER BY Į���� (ABC/DESC)
SELECT * FROM dept
ORDER BY deptno DESC;

