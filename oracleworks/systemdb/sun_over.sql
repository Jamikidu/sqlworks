
-- �޿� �Ѿ�
SELECT *
FROM employee;

-- �μ��� �޿� �Ѿ��� 500���� �̻��� �ڷ� �˻�
SELECT deptno, SUM(sal)
FROM employee
GROUP BY deptno
HAVING SUM(sal) > 5000000;

-- �μ��� �޿� �Ұ�� �Ѱ�
SELECT deptno, SUM(sal)
FROM employee
GROUP BY ROLLUP(deptno);

-- �޿� ������ ���
-- SUM(Į����) OVER(ORDER BY Į����)
SELECT empno,
       ename,
       sal,
       SUM(sal) OVER(ORDER BY empno) "sal_num",  -- �������� ����
       SUM(sal) OVER(ORDER BY empno  -- �������� ���� (������� ������ ���ϱ�)
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) "sal_num2",
       SUM(sal) OVER(ORDER BY empno  -- �������� ���� (������� ������ ���ϱ�)
            ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) "sal_num3"
FROM employee;