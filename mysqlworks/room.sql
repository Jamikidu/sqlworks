create table reservation(
	rno				int AUTO_INCREMENT PRIMARY KEY,
    spot			varchar(50),
    type			varchar(50),
    title			varchar(50),
    users			int,
    playtime		varchar(30),
    reservedtime	DATETIME,
    id				varchar(30),
    pname			varchar(30),
    phone			varchar(30)
);

drop table reservation;

insert into reservation(rno) values
(1),(2),(3),(4),(5);


SELECT * FROM room.reservation;