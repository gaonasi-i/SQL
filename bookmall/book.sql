--테이블(도서번호, 도서이름, 출판사, 도서가격)
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(50) NOT NULL,
    pubilsher VARCHAR2(50) NOT NULL,
    price NUMBER NOT NULL
);

--이름 변경
--ALTER TABLE book RENAME COLUMN price To saleprice;
--자료형 변경
ALTER TABLE book MODIFY bookname VARCHAR2(60);

DESC book;


--자료입력
INSERT INTO book VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO book VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO book VALUES (4, '골프바이블', '대한미디어', 35000);
INSERT INTO book VALUES (5, '피겨교본', '굿스포츠', 8000);
INSERT INTO book VALUES (6, '양궁의 실제', '굿스포츠', 6000);
INSERT INTO book VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO book VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);

--자료검색
SELECT * FROM book;

--모든 도서의 이름과 가격을 검색하시오
SELECT bookname, price
FROM book;

--도서 테이블에 있는 모든 출판사를 검색하시오 (DISTINCT 중복제거)
SELECT DISTINCT pubilsher
FROM book;

--특정한 조건 (WHERE)
--가격이 20000원 미만인 도서를 검색하시오
SELECT * 
FROM book
WHERE price < 20000;

--가격이 10000원 이상 20000원 이하인 도서를 검색하시오 (BETWEEN ~ AND)
SELECT *
FROM book
WHERE price 
BETWEEN 10000 AND 20000;

--OR 조건, IN('a', 'b')
--출판사가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색하시오
SELECT *
FROM book
WHERE pubilsher in ('굿스포츠', '대한미디어');

SELECT *
FROM book
WHERE pubilsher = '굿스포츠' OR  pubilsher ='대한미디어';

--'축구의 역사'를 출간한 출판사를 검색하시오
SELECT pubilsher
FROM book
WHERE bookname LIKE '축구의 역사';

--도서 이름에 '축구'가 포함된출판사를 검색하시오
SELECT pubilsher
FROM book
WHERE bookname LIKE '%축구%';

--축구에 관한 도서 중 가격이 20000원 이상인 도서를 찾으시오
SELECT *
FROM book
WHERE bookname LIKE '%축구%' 
AND price >= 20000;

--도서의 총수를 구하시오
SELECT COUNT(*) 도서총수
FROM book;

--도서중 최고 가격을 검색하시오
SELECT MAX(price) 
FROM book;

SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price) FROM book);

--도서 가격이 높은 순으로 정렬하시오
SELECT *
FROM book
ORDER BY price DESC;

--도서 가격이 높은 순으로 정렬하고, 가격 중복 도서를 출판사 오름차순으로 정렬
SELECT *
FROM book
ORDER BY price DESC, pubilsher ASC;
