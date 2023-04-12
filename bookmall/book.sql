--���̺�(������ȣ, �����̸�, ���ǻ�, ��������)
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(50) NOT NULL,
    pubilsher VARCHAR2(50) NOT NULL,
    price NUMBER NOT NULL
);

--�̸� ����
--ALTER TABLE book RENAME COLUMN price To saleprice;
--�ڷ��� ����
ALTER TABLE book MODIFY bookname VARCHAR2(60);

DESC book;


--�ڷ��Է�
INSERT INTO book VALUES (1, '�౸�� ����', '�½�����', 7000);
INSERT INTO book VALUES (2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO book VALUES (3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO book VALUES (4, '�������̺�', '���ѹ̵��', 35000);
INSERT INTO book VALUES (5, '�ǰܱ���', '�½�����', 8000);
INSERT INTO book VALUES (6, '����� ����', '�½�����', 6000);
INSERT INTO book VALUES (7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO book VALUES (8, '�߱��� ��Ź��', '�̻�̵��', 13000);
INSERT INTO book VALUES (9, '�ø��� �̾߱�', '�Ｚ��', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);

--�ڷ�˻�
SELECT * FROM book;

--��� ������ �̸��� ������ �˻��Ͻÿ�
SELECT bookname, price
FROM book;

--���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ� (DISTINCT �ߺ�����)
SELECT DISTINCT pubilsher
FROM book;

--Ư���� ���� (WHERE)
--������ 20000�� �̸��� ������ �˻��Ͻÿ�
SELECT * 
FROM book
WHERE price < 20000;

--������ 10000�� �̻� 20000�� ������ ������ �˻��Ͻÿ� (BETWEEN ~ AND)
SELECT *
FROM book
WHERE price 
BETWEEN 10000 AND 20000;

--OR ����, IN('a', 'b')
--���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻��Ͻÿ�
SELECT *
FROM book
WHERE pubilsher in ('�½�����', '���ѹ̵��');

SELECT *
FROM book
WHERE pubilsher = '�½�����' OR  pubilsher ='���ѹ̵��';

--'�౸�� ����'�� �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�
SELECT pubilsher
FROM book
WHERE bookname LIKE '�౸�� ����';

--���� �̸��� '�౸'�� ���Ե����ǻ縦 �˻��Ͻÿ�
SELECT pubilsher
FROM book
WHERE bookname LIKE '%�౸%';

--�౸�� ���� ���� �� ������ 20000�� �̻��� ������ ã���ÿ�
SELECT *
FROM book
WHERE bookname LIKE '%�౸%' 
AND price >= 20000;

--������ �Ѽ��� ���Ͻÿ�
SELECT COUNT(*) �����Ѽ�
FROM book;

--������ �ְ� ������ �˻��Ͻÿ�
SELECT MAX(price) 
FROM book;

SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price) FROM book);

--���� ������ ���� ������ �����Ͻÿ�
SELECT *
FROM book
ORDER BY price DESC;

--���� ������ ���� ������ �����ϰ�, ���� �ߺ� ������ ���ǻ� ������������ ����
SELECT *
FROM book
ORDER BY price DESC, pubilsher ASC;
