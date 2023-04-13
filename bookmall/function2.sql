--function
--NULL값 처리하기

SELECT * 
FROM customer
WHERE phone IS NULL;

--NVL(칼럼값, 값): 칼럼이름 null인경우 특정값을 출력, null이 아니면 칼럼값 출력
SELECT custid, name, address, NVL(phone ,'010-1234-5678')
FROM customer;


CREATE TABLE K1(
    ID VARCHAR2(3),
    CNT NUMBER(2)
);

INSERT INTO K1 VALUES('가', 5);
INSERT INTO K1 VALUES('나', NULL);
INSERT INTO K1 VALUES('다', 5);
INSERT INTO K1 VALUES('라', NULL);
INSERT INTO K1 VALUES('마', 10);

SELECT * FROM K1;

COMMIT;

--전체 개수, 합계, 평균, 최소값
--전체 개수
SELECT COUNT(CNT)개수 FROM K1; --3개
SELECT COUNT(NVL(CNT, 0))개수 FROM K1; --5개 / NULL을 0으로 바꿔서 5개로 합산
SELECT ID, COUNT(NVL(CNT, 0))개수 FROM K1
GROUP BY ID;

--전체 합계
SELECT SUM(NVL(CNT, 0)) SUM FROM K1; --20

--전체 평균
SELECT AVG(NVL(CNT, 0)) AVG FROM K1; --4

--최소값 NULL을 5로 변경
SELECT MIN(NVL(CNT, 5)) MIN FROM K1;



--RANK() 함수
SELECT ename,
       sal,
       RANK() OVER(ORDER BY sal DESC)급여_RANK,
       DENSE_RANK() OVER(ORDER BY sal DESC)급여_DENSE_RANK
FROM employee;





