SELECT * FROM dept;

SELECT * FROM employee;

DELETE FROM dept
WHERE deptno = '1000';

--employee 테이블 외래키 제약 조건에서 
-- ON DELETE CASCADB 제약조건 추가
--1. 외래키 제약 조건 삭제하기
ALTER TABLE employee DROP CONSTRAINT emp_fx;

--2.ON DELETE CASCADE 제약조건 추가
ALTER TABLE employee ADD CONSTRAINT emp_fx
FOREIGN KEY(deptno) REFERENCES dept(deptno)
ON DELETE CASCADE;
desc dept;