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

--게시글 검색
SELECT * FROM board;

DROP SEQUENCE board;