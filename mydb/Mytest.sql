--My test
CREATE TABLE Mytest(
    class VARCHAR2(1),
    name VARCHAR2(6)
);

INSERT INTO Mytest VALUES('A', '����');
INSERT INTO Mytest VALUES('A', '����');
INSERT INTO Mytest VALUES('A', '����');
INSERT INTO Mytest VALUES('B', '����');
INSERT INTO Mytest VALUES('B', '����');
INSERT INTO Mytest VALUES('C', '����');
INSERT INTO Mytest VALUES('C', '����');


SELECT * FROM Mytest;

-- ������ �л����� ���ϼ���
SELECT class, COUNT(*) RESULT
FROM Mytest
GROUP BY class;

-- �̸� �ߺ�����
SELECT class, COUNT(DISTINCT NAME) RESULT
FROM Mytest
GROUP BY class;

--CASE WHEN
SELECT 
        COUNT(CASE WHEN class = 'A' THEN 1
        END) AS A,
         COUNT(CASE WHEN class = 'B' THEN 1
        END) AS B,
         COUNT(CASE WHEN class = 'C' THEN 1
        END) AS C
FROM Mytest;

--DECODE(Į��, ����, ���ΰ�, �����ΰ�)
SELECT 
        COUNT(DECODE(class,'A', 1)) A,
        COUNT(DECODE(class,'B', 1)) B,
        COUNT(DECODE(class,'C', 1)) C
FROM Mytest;