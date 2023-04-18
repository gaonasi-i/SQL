-- board 테이블
-- 칼럼 - 글번호, 글제목, 작성자, 글내용, 등록일
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY,       --글번호
    title VARCHAR2(200) NOT NULL,    --글제목
    writer VARCHAR2(20) NOT NULL,    --작성자
    content VARCHAR2(2000) NOT NULL, --글내용
    regdate DATE DEFAULT SYSDATE     --등록일
);

--시퀀스(일련번호, 자동순번)
CREATE SEQUENCE seq;

--게시글 추가
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '가입인사', '강남역', '안녕하세요! 가입인사 드려요 :)');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '공지사항', '관리자', '가입인사를 남겨주세요');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '가입인사', '이강', '안녕하세요~');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '가입인사', '이강', '안녕하세요~');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '좋은 하루', '긴하루', '좋은 하루 되세요!');

--게시글 검색
SELECT * FROM board
ORDER BY regdate DESC;

--시퀀스 삭제
DROP SEQUENCE seq;

--추천수 칼럼을 추가하세요 (칼럼명 : cnt, 자료형: NUMBER DEFAULT 0)
--ALTER TABLE 테이블 이름 ADD 칼럼명 자료형
ALTER TABLE board
ADD cnt NUMBER DEFAULT 0;

DESC board;

--테이블 삭제 / 테이블 삭제후 스퀀스 삭제
DROP TABLE board;

--작성자가 관리자인 게시글을 검색하시오
SELECT * FROM board
WHERE bno = 2;

--게시글의 작성자를 '관리자'에서 'admin'으로 변경하세요 
-- UPDATE 테이블이름 SET 칼럼 = 변경값 WHERE 절
UPDATE board SET writer = 'admin'
WHERE bno = 2;

--3번 게시글을 삭제하시오
DELETE FROM board 
WHERE bno = 3;

-- 제기 복사(자료 삽입)
-- INSERT INTO(칼럼) (SELECT 칼럼 FROM 테이블이름)
INSERT INTO board(bno, title, writer, content)
(SELECT seq.nextval, title, writer, content FROM board);

SELECT ROWNUM, bno, title, content
FROM board
WHERE ROWNUM > 0 AND ROWNUM <=10;
--WHERE ROWNUM > 11 AND ROWNUM <=20; --RONUM은 1을 포함해야함

--페이징 처리 ROWNUM에 별칭(rn)을 추가하여 검색
SELECT * 
FROM
(SELECT ROWNUM rn, bno, title, content
FROM board)
WHERE rn >= 11 AND ROWNUM <=20;

SELECT * 
FROM
(SELECT ROWNUM rn, bno, title, content
FROM board)
WHERE rn >= 20 AND ROWNUM <=30;

--ROWID
--데이터를 구분하는 유일한 값
--ROWID를 통해서 데이터 파일, 어느블럭에 저장되어 있는 지 알수있음
SELECT ROWID, bno, title, content
FROM board
WHERE ROWID = 'AAAS1kAAHAAAAFuAAD';