use mydb;

create table user(
	id		int primary key,
    pwd 	varchar(20) not null,
    name 	varchar(30) not null,
    phone 	varchar(20)
);

-- user 추가
insert into user values (101, 'today123', '투데이', '010-1234-5678');

commit;