-- ��� ���̺�
CREATE TABLE emp(
    --Į�� �̸� �ڷ���
    empno   NUMBER(3) PRIMARY KEY,      -- �����ȣ
    ename   VARCHAR2(20) NOT NULL,      -- ����̸�
    sal     NUMBER(10),                 -- �޿�
    createdate DATE DEFAULT SYSDATE     -- �����
);

-- ��� �߰�
INSERT INTO emp VALUES (100, '�̰�', 2500000, SYSDATE);
INSERT INTO emp VALUES (101, '���', 3000000, SYSDATE);
INSERT INTO emp VALUES (102, '�����', 5000000, SYSDATE);
INSERT INTO emp VALUES (103, '�ڽ���', '', SYSDATE);

-- ��� ��ȸ
SELECT * FROM emp;

-- �����ȣ, ����̸�, �޿��� �˻��Ͻÿ�
SELECT empno as ���, ename as �����, sal as �޿� FROM emp;

-- �޿��� ���� ����� �˻��Ͻÿ�
SELECT *
FROM emp
WHERE sal IS NULL;  -- null�� �ƴ� ����(is not null)

-- �޿��� 300���� ������ ����� �޿��� ���� ������ �����Ͻÿ�
SELECT *
FROM emp
WHERE sal <= 3000000
ORDER BY sal DESC;

-- �޿��� ���� ������ �����Ͻÿ�
SELECT *
FROM emp
ORDER BY sal DESC;

COMMIT;
