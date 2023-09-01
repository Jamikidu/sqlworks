create table gallery(
	gid		int auto_increment primary key,
    gtitle	varchar(100),
    gpname	varchar(100),
    gpw		varchar(100),
	gupfile	varchar(100),
    gcontent varchar(9999),
    greg_date timestamp,
    gcnt int
);

insert into gallery(gtitle,gpname,gpw,gcontent,greg_date,gcnt)
values
('첫사진','유저1','1111','사진설명1','2023-08-01',0),
('둘사진','유저2','1111','사진설명2','2023-08-02',0),
('셋사진','유저3','1111','사진설명3','2023-08-03',0),
('넷사진','유저4','1111','사진설명4','2023-08-04',0),
('다섯사진','유저5','1111','사진설명5','2023-08-05',0);

insert into gallery(gtitle,gpname,gpw,gcontent,greg_date,gcnt)
values
('여섯사진','유저6','1111','사진설명6','2023-07-06',0),
('일곱사진','유저7','1111','사진설명7','2023-07-07',0),
('여덜사진','유저8','1111','사진설명8','2023-07-08',0),
('아홉사진','유저9','1111','사진설명9','2023-07-09',0),
('열사진','유저10','1111','사진설명10','2023-07-10',0);



select * from gallery;