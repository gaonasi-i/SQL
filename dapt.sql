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

-- �μ� �ڷ� �˻� / as:��Ī (alias)
SELECT deptname as �μ��� FROM dept;


