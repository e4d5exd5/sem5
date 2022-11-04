REM   Script: expt3
REM   dsf

create table time(    
    day int,    
    month int,    
    quarter int,    
    year int not null,    
    primary key(year)    
);

create table game(    
    game_name varchar(20) not null,    
    description varchar(255),    
    producer varchar(255),    
    primary key(game_name)    
);

create table location(    
    location_name varchar(255) not null,    
    city varchar(255),    
    state varchar(255),    
    country varchar(255),    
    primary key(location_name)    
);

create table spectator(    
    spectator_name varchar(255) not null,    
    type varchar(255),    
    phone int,    
    address varchar(255),    
    primary key(spectator_name)    
);

create table sales(   
    year int references time(year),  
    game_name varchar(20) references game(game_name),  
    location_name varchar(255) references location(location_name),  
    spectator_name varchar(255) references spectator(spectator_name),  
    charge int,   
    count int  
);

insert into time values(20,4,2,2005);

insert into time values(26,9,3,2002);

insert into time values(17,5,2,2003);

insert into time values(14,6,3,2004);

insert into time values(18,12,4,2009);

insert into time values(2,10,3,2008);

insert into time values(10,11,4,2012);

insert into time values(29,8,3,2001);

insert into time values(7,2,1,2015);

insert into time values(9,1,1,2011);

insert into game values('valo','fun','abc');

insert into game values('pubg','kill','def');

insert into game values('new state','thrill','ijk');

insert into game values('cod','mobile game','lmn');

insert into game values('subway','running','pqr');

insert into game values('traffic racer','driving','rst');

insert into game values('bgmi','simulation','tencent');

insert into game values('coc','robbery','unity');

insert into game values('san andreas','pc game','asd');

insert into game values('chess','mind game','swapnil');

insert into location values('govandi','mumbai','maharashtra','india');

insert into location values('panvel','new mumbai','maharashtra','india');

insert into location values('shrinagar','jammu','Jammu & Kashmir','india');

insert into location values('karad','karad','maharashtra','india');

insert into location values('darjeeling','darjeeling','west bengal','india');

insert into location values('shimla','shimla','uttarakhand','india');

insert into location values('kamothe','new mumbai','maharashtra','india');

insert into location values('cidco','dronagiri','maharashtra','india');

insert into location values('kalyan','kalyan','maharashtra','india');

insert into location values('surat','surat','gujrat','india');

insert into spectator values('sumit','live',9872634528,'govandi');

insert into spectator values('rohan','live',9872134828,'chembur');

insert into spectator values('swapnil','non  live',7365294673,'vashi');

insert into spectator values('chirag','non live',5142378594,'kamothe');

insert into spectator values('aryan','television',6253427912,'seawood');

insert into spectator values('yash','mobile',8762917253,'nerul');

insert into spectator values('harsh','ott',4678926345,'panvel');

insert into spectator values('akshay','youtube',7980573725,'thane');

insert into spectator values('gaurav','twitch',7893645271,'kurla');

insert into spectator values('pratik','rooter',3847690234,'ghatkopar');

insert into sales select t.year,g.game_name,l.location_name,s.spectator_name,10,100 from time t cross join game g cross join location l cross join spectator s;

select * from time;

select * from game;

select * from location;

select * from spectator;

select * from sales where rownum <=15;

select * from time;

select * from game;

select * from location;

select * from spectator;

select * from sales;

SELECT spectator_name, SUM(charge) 
FROM sales 
WHERE year = 2001 
GROUP BY spectator_name;

SELECT * FROM sales 
WHERE (game_name = 'bgmi' OR game_name ='subway') 
AND (spectator_name = 'swapnil' OR spectator_name = 'akshay') 
AND (location_name = 'darjeeling' OR location_name = 'karad') 
AND year=2008;

SELECT spectator_name, SUM(charge) 
FROM sales 
GROUP BY ROLLUP (spectator_name);

SELECT * FROM sales 
PIVOT (COUNT (spectator_name) FOR year IN (2002,2005,2008,2020,2012));

SELECT spectator_name, game_name, location_name, year, type  
FROM (sales NATURAL JOIN spectator);

