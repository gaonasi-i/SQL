-- ���� �ڷ��� ��
CREATE TABLE ex1(
    colum1 CHAR(10),    -- �������� �ڷ���
    colum2 VARCHAR2(10) -- �������� �ڷ���
);

-- �ڷ� �߰�
INSERT INTO ex1(colum1, colum2) VALUES('abc', 'abc');
INSERT INTO ex1 VALUES('����', '����');

-- �ڷ���ȸ
SELECT colum1, LENGTH(colum1) len1, colum2, LENGTH(colum2) len2
FROM ex1;

COMMENT;