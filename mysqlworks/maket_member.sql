use javaweb;

-- Market: member 테이블 생성
create table member (
	mid			varchar(20),
    passwd		varchar(20) not null,
    mname		varchar(30) not null,
    gender		varchar(10),
    birth		varchar(20),
    phone		varchar(20),
    email		varchar(30),
    address		varchar(50),
    regdate		timestamp default now(),
	primary key(mid)
);

insert into member(mid, passwd, mname, gender, birth, phone, email, address)
values('cloud', 'm123456#', '구름', '여', '1995/12/1', '010-1234-5678',
	'cloud@cloud.com', '서울시 강남구 청담동');
    
update member set email = 'sky123@gmail.com' where mid = 'sky123';
    
insert into member(mid, passwd, mname, gender, birth, phone, email, address)
values('today', 'm123456#', '투데이', 'male', '1998/7/15', '010-1111-2222',
	'today@today.com', '경기도 용인시 처인구');
    
select * from member;
drop table member;
commit;