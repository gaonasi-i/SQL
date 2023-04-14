-- 조인(join)과 서브쿼리(Subquery)

SELECT * FROM customer;
SELECT * FROM book;
SELECT * FROM orders;

--고객정보와 주문건에 관한 데이터를 모두 검색하시오
SELECT cus.custid, cus.name, ord.saleprice, ord.orderdate
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
AND cus.name = '박지성';    -- 박지성 고객의 주문내역
--AND saleprice >= 20000;    --판매가격이 20000원 이상 주문 내역
--AND orderdate = '2018-07-08';  --주문일이 2018-07-08일에 주문 내역

--고객(이름)별로 주문한 모든 도서의 총 판매액을 구하시오
SELECT cus.name, SUM(saleprice)판매금액,
RANK() OVER(ORDER BY SUM(saleprice) DESC)순위
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

--고객의 이름과 고객이 주문한 도서의 이름을 검색하시오
SELECT cus.name, boo.bookname, ord.saleprice, ord.orderdate
FROM customer cus, orders ord, book boo
WHERE cus.custid = ord.custid
AND boo.bookid = ord.bookid
ORDER BY cus.name; --정렬을 하면 그룹화도 됨

--가장 비싼 도서의 이름을 검색하시오
--SELECT bookname, MAX(price)FROM book; 오류발생
SELECT MAX(price)FROM book; --35000
SELECT bookname FROM book -- 골프바이볼
WHERE price = 35000;

--중첩쿼리
SELECT bookname, price 
FROM book
WHERE price = 
    (SELECT 
     MAX(price)
     FROM book);
    
--도서를 구매한 적이 있는 고객의 이름을 검색하시오
--1.주문 테이블에서 고객 아이디를 검색
SELECT custid FROM orders;
--2.고객아이디가 있는 고객 이름 검색
SELECT name FROM customer
WHERE custid IN(1, 2, 3, 4);

SELECT custid, name FROM customer
WHERE custid IN(
                SELECT custid
                FROM orders
                );

--도서를 구매한 적이 없는 고객의 이름을 검색하시오
SELECT custid, name FROM customer
WHERE custid NOT IN(
                    SELECT custid
                    FROM orders
                    );
                    
--김연아 고객의 주문내역을 검색하시오
SELECT *
FROM orders
WHERE custid =
    (SELECT custid
     FROM customer
     WHERE name = '김연아');

--뷰(view)생성
--주소에 대한민국을 포함하는 고객들로 구성한 뷰를 만들고 조회하시오
-- CREATE VIEW 뷰이름
-- AS SELECT 뷰 
CREATE VIEW vw_Customer
AS SELECT * FROM customer 
WHERE address LIKE '%대한민국%';

--뷰검색
SELECT * FROM vw_Customer;
--뷰삭제
DROP TABLE vw_Customer;

-- 뷰 만들기 : 고객의 이름과 주문한 도서의 이름과 가격을 검색하시오
CREATE VIEW vw_Orders
AS SELECT cus.name, bo.bookname, ord.saleprice
FROM customer cus, orders ord, book bo
WHERE cus.custid = ord.custid
AND bo.bookid = ord.bookid;

--뷰로 검색
SELECT * FROM vw_Orders;


--고객과 고객의 주문에 관한 데이터를 모두 검색하시오
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
     WHERE cus.custid = ord.custid
     ORDER BY cus.name;

--SELECT JOIN(FROM절에 INNER JOIN-ON : 공동조인)
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
     ON cus.custid = ord.custid
     ORDER BY cus.name;
     
--OUTER JOIN : 외부조인
--JOUN 조건에 충족하는 데이터가 아니어도 출력할수 있는 방식
--LEFT OUTER JOIN, RIGHT OUTER JOIN
--주문이 없는 고객을 포함하여 고객과 고객의 주문에 관한 데이터를 모두 검색하시오
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
     ON cus.custid = ord.custid
     ORDER BY cus.name;