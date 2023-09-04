create table reservation(
	rv_id			varchar(250) primary key,
    date			date,
    time			time,
    rv_people		int,
    rv_price		int,
    userName		varchar(250),
    themeName		varchar(250),
    rv_date			datetime
);

drop table reservation;

insert into reservation(rno) values
(1),(2),(3),(4),(5);


SELECT * FROM room.reservation;