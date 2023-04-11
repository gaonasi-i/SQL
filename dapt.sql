-- 부서 테이블(depy)
CREATE TABLE dept(
    -- 칼럼이름, 자료형
    deptno VARCHAR2(4),
    deptname VARCHAR2(20),
    office VARCHAR2(10)
);
DESC dept;


-- 부서 추가
INSERT INTO dept(deptno, deptname, office) VALUES ('1000', '인사팀', '서울');
INSERT INTO dept(deptno, deptname, office) VALUES ('1001', '전산팀', '수원');
INSERT INTO dept(deptno, deptname, office) VALUES ('1002', '회계팀', '수원');
INSERT INTO dept(deptno, deptname, office) VALUES ('1003', '영업팀', '');

-- 부서 자료 검색 / as:별칭 (alias)
SELECT deptname as 부서명 FROM dept;

--특정한 자료 검색 : 

--부서번호가 1002인 부서를 '회계팀'으로 변경하세요
UPDATE dept
SET dept = '회계팀'
WHERE deptno = '1002';

--부서 테이블 삭제
DELETE FROM dept
WHERE deptno = '1003';

SELECT * FROM dept;

--자료정렬 : ORDER BY 칼럼명 (ABC/DESC)
SELECT * FROM dept
ORDER BY deptno DESC;

