SHOW USER;

--����� ���� �����
--DB�̸�, ��й�ȣ, ���̺� ���� ����

CREATE USER c##mydb 
IDENTIFIED BY "1234"
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

--���� ����
GRANT CONNECT, DBA TO c##mydb;