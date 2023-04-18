--My test
CREATE TABLE Mytest(
    class VARCHAR2(1),
    name VARCHAR2(6)
);

INSERT INTO Mytest VALUES('A', '조조');
INSERT INTO Mytest VALUES('A', '조조');
INSERT INTO Mytest VALUES('A', '조조');
INSERT INTO Mytest VALUES('B', '유비');
INSERT INTO Mytest VALUES('B', '관우');
INSERT INTO Mytest VALUES('C', '여포');
INSERT INTO Mytest VALUES('C', '여포');


SELECT * FROM Mytest;

-- 각반의 학생수를 구하세요
SELECT class, COUNT(*) RESULT
FROM Mytest
GROUP BY class;

-- 이름 중복제거
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

--DECODE(칼럼, 조건, 참인값, 거짓인값)
SELECT 
        COUNT(DECODE(class,'A', 1)) A,
        COUNT(DECODE(class,'B', 1)) B,
        COUNT(DECODE(class,'C', 1)) C
FROM Mytest;