--function
--NULL�� ó���ϱ�

SELECT * 
FROM customer
WHERE phone IS NULL;

--NVL(Į����, ��): Į���̸� null�ΰ�� Ư������ ���, null�� �ƴϸ� Į���� ���
SELECT custid, name, address, NVL(phone ,'010-1234-5678')
FROM customer;


CREATE TABLE K1(
    ID VARCHAR2(3),
    CNT NUMBER(2)
);

INSERT INTO K1 VALUES('��', 5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��', 5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��', 10);

SELECT * FROM K1;

COMMIT;

--��ü ����, �հ�, ���, �ּҰ�
--��ü ����
SELECT COUNT(CNT)���� FROM K1; --3��
SELECT COUNT(NVL(CNT, 0))���� FROM K1; --5�� / NULL�� 0���� �ٲ㼭 5���� �ջ�
SELECT ID, COUNT(NVL(CNT, 0))���� FROM K1
GROUP BY ID;

--��ü �հ�
SELECT SUM(NVL(CNT, 0)) SUM FROM K1; --20

--��ü ���
SELECT AVG(NVL(CNT, 0)) AVG FROM K1; --4

--�ּҰ� NULL�� 5�� ����
SELECT MIN(NVL(CNT, 5)) MIN FROM K1;



--RANK() �Լ�
SELECT ename,
       sal,
       RANK() OVER(ORDER BY sal DESC)�޿�_RANK,
       DENSE_RANK() OVER(ORDER BY sal DESC)�޿�_DENSE_RANK
FROM employee;





