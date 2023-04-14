-- board ���̺�
-- Į�� - �۹�ȣ, ������, �ۼ���, �۳���, �����
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY,       --�۹�ȣ
    title VARCHAR2(200) NOT NULL,    --������
    writer VARCHAR2(20) NOT NULL,    --�ۼ���
    content VARCHAR2(2000) NOT NULL, --�۳���
    regdate DATE DEFAULT SYSDATE     --�����
);

--������(�Ϸù�ȣ, �ڵ�����)
CREATE SEQUENCE seq;

--�Խñ� �߰�
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ�', '������', '�ȳ��ϼ���! �����λ� ����� :)');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '��������', '������', '�����λ縦 �����ּ���');

--�Խñ� �˻�
SELECT * FROM board;

DROP SEQUENCE board;