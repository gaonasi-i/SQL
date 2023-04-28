SELECT * FROM t_class;
SELECT * FROM t_student;

--조인
SELECT *
FROM t_class cls, t_student stu
WHERE cls.cid = stu.cid;


--학과별 학생수
SELECT cls.cid, cls.cname, COUNT(*)학생수
FROM t_class cls, t_student stu
WHERE cls.cid = stu.cid
GROUP BY cls.cid, cls.cname;

--학과별 학생수의 소개 및 총개를 구하시오
SELECT cls.cid, cls.cname, COUNT(*)학생수
FROM t_class cls, t_student stu
WHERE cls.cid = stu.cid
GROUP BY ROLLUP (cls.cid, cls.cname);



