SELECT * FROM t_class;
SELECT * FROM t_student;

--����
SELECT *
FROM t_class cls, t_student stu
WHERE cls.cid = stu.cid;


--�а��� �л���
SELECT cls.cid, cls.cname, COUNT(*)�л���
FROM t_class cls, t_student stu
WHERE cls.cid = stu.cid
GROUP BY cls.cid, cls.cname;

--�а��� �л����� �Ұ� �� �Ѱ��� ���Ͻÿ�
SELECT cls.cid, cls.cname, COUNT(*)�л���
FROM t_class cls, t_student stu
WHERE cls.cid = stu.cid
GROUP BY ROLLUP (cls.cid, cls.cname);



