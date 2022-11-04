REM   Script: Session 01
REM   dsfsdf

create table time( 
time_id int not null, 
day int, 
month int, 
quarter int, 
year int, 
primary key(time_id) 
)
;

create table game( 
game_id int not null, 
game_name varchar(20), 
description varchar(255), 
producer varchar(255), 
primary key(game_id) 
)
;

create table location( 
location_id int not null, 
location_name varchar(255), 
city varchar(255), 
state varchar(255), 
country varchar(255), 
primary key(location_id) 
)
;

create table spectator( 
spectator_id int not null, 
spectator_name varchar(255), 
type varchar(255), 
phone int, 
address varchar(255), 
primary key(spectator_id) 
)
;

create table sales( 
time_id int references time(time_id), 
game_id int references game(game_id), 
location_id int references location(location_id), 
spectator_id int references spectator(spectator_id), 
charge int, 
count int 
)
;

insert into time values(1,20,4,2,2005)
;

insert into time values(2,26,9,3,2002)
;

insert into time values(3,17,5,2,2003)
;

insert into time values(4,14,6,3,2004)
;

insert into time values(5,18,12,4,2009)
;

insert into time values(6,2,10,3,2008)
;

insert into time values(7,10,11,4,2012)
;

insert into time values(8,29,8,3,2001)
;

insert into time values(9,7,2,1,2015)
;

insert into time values(10,9,1,1,2011)
;

insert into game values(1,'valo','fun','abc')
;

insert into game values(2,'pubg','kill','def')
;

insert into game values(3,'new state','thrill','ijk')
;

insert into game values(4,'cod','mobile game','lmn')
;

insert into game values(5,'subway','running','pqr')
;

insert into game values(6,'traffic racer','driving','rst')
;

insert into game values(7,'bgmi','simulation','tencent')
;

insert into game values(8,'coc','robbery','unity')
;

insert into game values(9,'san andreas','pc game','asd')
;

insert into game values(10,'chess','mind game','swapnil')
;

insert into location values(1,'govandi','mumbai','maharashtra','india')
;

insert into location values(2,'panvel','new mumbai','maharashtra','india')
;

insert into location values(3,'shrinagar','jammu','Jammu & Kashmir','india')
;

insert into location values(4,'karad','karad','maharashtra','india')
;

insert into location values(5,'darjeeling','darjeeling','west bengal','india')
;

insert into location values(6,'shimla','shimla','uttarakhand','india')
;

insert into location values(7,'kamothe','new mumbai','maharashtra','india')
;

insert into location values(8,'cidco','dronagiri','maharashtra','india')
;

insert into location values(9,'kalyan','kalyan','maharashtra','india')
;

insert into location values(10,'surat','surat','gujrat','india')
;

insert into spectator values(1,'sumit','live',9872634528,'govandi')
;

insert into spectator values(2,'rohan','live',9872134828,'chembur')
;

insert into spectator values(3,'swapnil','non live',7365294673,'vashi')
;

insert into spectator values(4,'chirag','non live',5142378594,'kamothe')
;

insert into spectator values(5,'aryan','television',6253427912,'seawood')
;

insert into spectator values(6,'yash','mobile',8762917253,'nerul')
;

insert into spectator values(7,'harsh','ott',4678926345,'panvel')
;

insert into spectator values(8,'akshay','youtube',7980573725,'thane')
;

insert into spectator values(9,'gaurav','twitch',7893645271,'kurla')
;

insert into spectator values(10,'pratik','rooter',3847690234,'ghatkopar')
;

Select * from sales
;

Insert into sales Select t.time_id, g.game_id, l.location_id, s.spectator, from time t cross join game g cross join location l cross join spectator s 

;

Insert into sales Select t.time_id, g.game_id, l.location_id, s.spectator, from time t cross join game g cross join location l cross join spectator s
;

Insert into sales Select t.time_id, g.game_id, l.location_id, s.spectator from time t cross join game g cross join location l cross join spectator s
;

Insert into sales Select t.time_id, g.game_id, l.location_id, d.spectator from time t cross join game g cross join location l cross join spectator d
;

Insert into sales Select t.time_id, g.game_id, l.location_id, a.spectator_id from time t cross join game g cross join location l cross join spectator a
;

Insert into sales Select t.time_id, g.game_id, l.location_id, a.spectator_id from time t cross join game g cross join location l cross join spectator a
;

Select * from time t cross join game g cross join location l cross join spectator a
;

Select t.time_id, g.game_id, l.location_id, a.spectator_id from time t cross join game g cross join location l cross join spectator a
;

Select t.time_id, g.game_id, l.location_id, a.spectator_id from time t cross join game g cross join location l cross join spectator a
;

create table sales( 
time_id int references time(time_id), 
game_id int references game(game_id), 
location_id int references location(location_id), 
spectator_id int references spectator(spectator_id), 
)
;

create table sales( 
time_id int references time(time_id), 
game_id int references game(game_id), 
location_id int references location(location_id), 
spectator_id int references spectator(spectator_id), 
)
;

create table FactTable( 
time_id int references time(time_id), 
game_id int references game(game_id), 
location_id int references location(location_id), 
spectator_id int references spectator(spectator_id), 
)
;

create table FactTable 
( 
    time_id int references time(time_id), 
    game_id int references game(game_id), 
    location_id int references location(location_id), 
    spectator_id int references spectator(spectator_id), 
)
;

Select * from FactTable
;

create table FactTable 
( 
    time_id int references time(time_id), 
    game_id int references game(game_id), 
    location_id int references location(location_id), 
    spectator_id int references spectator(spectator_id), 
)
;

create table FactTable 
( 
    time_id int references time(time_id), 
    -- game_id int references game(game_id), 
    -- location_id int references location(location_id), 
    -- spectator_id int references spectator(spectator_id), 
)
;

create table sales( 
time_id int references time(time_id), 
game_id int references game(game_id), 
location_id int references location(location_id), 
spectator_id int references spectator(spectator_id), 
charge int, 
count int 
)
;

create table sales( 
time_id int references time(time_id), 
game_id int references game(game_id), 
location_id int references location(location_id), 
spectator_id int references spectator(spectator_id) 
)
;

drop sales
;

drop table sales
;

create table sales( 
time_id int references time(time_id), 
game_id int references game(game_id), 
location_id int references location(location_id), 
spectator_id int references spectator(spectator_id) 
)
;

Insert into sales Select t.time_id, g.game_id, l.location_id, a.spectator_id from time t cross join game g cross join location l cross join spectator a
;

Select * from sales
;

Select spectator_id, SUM(game_id) 
From sales 
where time_id = 1 
Group By spectator_id
;

Select *  
From sales 
where (game_id = 10 or game_id = 5) 
AND (spectator_id = 2 OR spectator_id = 8) 
AND (location_id = 4 OR location_id = 2) 
AND time_id =  4
;

Select spectator_id, SUM(game_id) 
From sales 
where time_id = 1 
Group By rollup(spectator_id)
;

Select location_id spectator_name, game_id, type, address 
From (sales natural join spectator) 
join time on sales.time_id = time.time_id
;

Select * 
from sales 
PIVOT (count(spectator_id) for time_id in (4, 6, 8, 10))
;
