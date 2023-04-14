SELECT * FROM customer;

--�а� ���̺�
CREATE TABLE tbl_class(
    cid NUMBER(3),                  --�а��ڵ�(�⺻Ű)
    cname VARCHAR2(30) NOT NULL,    --�а���
    ctel VARCHAR2(15) NOT NULL,     --�а� ��ȭ��ȣ
    clocation VARCHAR2(20) NOT NULL,        --���繫�� ��ġ
    PRIMARY KEY(cid)
);

-- �а� �ڷ� ����
INSERT INTO tbl_class VALUES (101, '����Ʈ�����а�', '02-1234-1234', 'B�� 3��');
INSERT INTO tbl_class VALUES (102, 'ȭ�а��а�', '02-1234-4567', 'B�� 4��');
INSERT INTO tbl_class VALUES (103, '�������ڰ��а�', '02-1234-5678', 'B�� 5��');

SELECT * FROM tbl_class;


-- �л� ���̺�
CREATE TABLE tbl_student(
    snumber NUMBER(8) PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(3),
    gender  VARCHAR2(6) NOT NULL,
    address VARCHAR2(50),
    cid     NUMBER(3) NOT NULL,
    --�ܷ�Ű ��������(�а�)
    CONSTRAINT fk_class FOREIGN KEY(cid)
    REFERENCES tbl_class(cid) ON DELETE CASCADE
);

-- �л� �ڷ� ����
INSERT INTO tbl_student VALUES (20211234, '�̰�', 22, '����', '����� ���α�', 102);
INSERT INTO tbl_student VALUES (20211235, '�ڴ��', 25, '����', '��⵵ ������', 101);
INSERT INTO tbl_student VALUES (20211236, '�Ѻ��', 23, '����', '��⵵ ������', 103);

SELECT * FROM tbl_student;

-- 1. �ּҰ� '��⵵'�� �л��� �˻��Ͻÿ�
SELECT * FROM tbl_student
WHERE address LIKE '%��⵵%';

-- 2. �ּҰ� '��⵵'�̰� ������ �л��� �˻��Ͻÿ�
SELECT * FROM tbl_student
WHERE address LIKE '%��⵵%'
AND gender = '����';

-- 3. ���̰� ���� ������ �����Ͻÿ�
SELECT * FROM tbl_student
ORDER BY AGE DESC;

-- 4. '�ڴ��'�� ���̸� 30���� ����(����)�Ͻÿ�
UPDATE tbl_student SET age = 30
WHERE cid = 101;