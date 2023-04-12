-- 문자 자료형 비교
CREATE TABLE ex1(
    colum1 CHAR(10),    -- 고정길이 자료형
    colum2 VARCHAR2(10) -- 가변길이 자료형
);

-- 자료 추가
INSERT INTO ex1(colum1, colum2) VALUES('abc', 'abc');
INSERT INTO ex1 VALUES('강남', '강남');

-- 자료조회
SELECT colum1, LENGTH(colum1) len1, colum2, LENGTH(colum2) len2
FROM ex1;

COMMENT;