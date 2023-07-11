-- 부서와 사원 테이블
use mydb;
-- 부서 테이블
create table department(
	deptid int primary key,			-- 부서번호
    deptname varchar(30) not null,	-- 부서이름
    location varchar(20) not null	-- 사무실 위치
);

-- 사원 테이블
CREATE TABLE employee(
	empid INT PRIMARY KEY,			-- 사원 번호
    empname VARCHAR(30) NOT NULL,	-- 사원 이름
    age INT,						-- 나이
    deptid INT NOT NULL,			-- 부서 아이디(외래키)
    constraint fk_dept_employee foreign key(deptid)
    references department(deptid)	-- 관계 설정(외래키)
);

-- 부서 추가
insert into department values(10, '개발팀', '서울');
INSERT INTO department VALUES(20, '디자인팀', '성남');

-- 사원 추가
insert into employee values(101, '한라산', 27, 10);
insert into employee values(102, '동해', 31, 20);
insert into employee values(103, '서해', 23, 30);	-- 부모키(30)가 없어서 실행안됨

-- 부서 삭제(부서이름이 '디자인팀'을 삭제 -> 자식 로우(row)가 있으므로 삭제 안됨
-- 제약조건(on delete cascade)을 추가하면 삭제 가능함
delete from department where deptid = 20;

-- 부서 검색
select * from department;

-- 사원 검색
select * from employee;

-- 사원이름이 '한라산'인 사원의 사원아이디와 부서아이디를 출력하시오
select empid, deptid from employee where empname = '한라산';

-- 부서이름이 '개발팀'인 사무실의 위치를 검색하시오.
select location from department where deptname = '개발팀';

-- 사원번호가 102인 사원의 이름을 '동해'로 나이는 30세로 변경하시오.
update employee set empname = '동해', age = 30 where empid = 102;

-- 트랜잭션(실행-commit, 취소-rollback)
rollback;

commit;


