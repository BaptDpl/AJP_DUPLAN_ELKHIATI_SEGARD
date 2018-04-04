# TABLE CREATION

drop table if exists child;
drop table if exists ddate;
drop table if exists contract;
drop table if exists reservation;
drop table if exists users;


create table Child (

	
	child_id int primary key auto_increment,
    cname char(20),
    age int,
    user_id int references users(user_id)

);

create table ddate(

	dday date primary key,
    offday bool

);

create table Contract(

	contract_id int primary key auto_increment,
    regular bool,
    child_id int references Child(child_id),
	startDay date references ddate(dday),
    startMorning bool,
    startAfternoon bool,
    endDay date references ddate(dday),
    endMorning bool,
    endAfternoon bool

);

create table users(

	user_id int not null auto_increment,
    user_name char(45),
    phone char(15),
    email char(45) unique,
    
    primary key(user_id)
);

#
# POPULATING USERS
#
insert into users(user_name, phone, email) values("Duplan", "06 66 66 66", "duplan@email.com");
insert into users(user_name, phone, email) values("Cante", "07 77 77 77", "cante@email.com");
insert into users(user_name, phone, email) values("Segard", "08 88 88 88", "segard@email.com");
insert into users(user_name, phone, email) values("Elkhiati", "09 99 99 99", "elkhiati@email.com");
insert into users(user_name, phone, email) values("Carricajo", "05 55 55 55", "carricajo@email.com");

#
# POPULATING CHILD
#

#Duplan family
insert into child(cname, age, user_id) values("Kevin", 12, 1);
insert into child(cname, age, user_id) values("Brian", 20, 1);
insert into child(cname, age, user_id) values("Brandon", 17, 1);
insert into child(cname, age, user_id) values("Mike", 8, 1);

#Cante family
insert into child(cname, age, user_id) values("Socrate", 22, 2);
insert into child(cname, age, user_id) values("Descartes", 11, 2);
insert into child(cname, age, user_id) values("Epicure", 25, 2);
insert into child(cname, age, user_id) values("Platon", 1, 2);

#Segard family
insert into child(cname, age, user_id) values("Vojtech", 12, 1);
insert into child(cname, age, user_id) values("Martina", 20, 1);
insert into child(cname, age, user_id) values("Janek", 13, 1);
insert into child(cname, age, user_id) values("Mikulach", 22, 1);

#Elkhiati family
insert into child(cname, age, user_id) values("Marron", 12, 1);
insert into child(cname, age, user_id) values("Jaune", 10, 1);
insert into child(cname, age, user_id) values("Vert", 28, 1);
insert into child(cname, age, user_id) values("Bleu", 1, 1);

#Carricajo family
insert into child(cname, age, user_id) values("Juan", 10, 1); 
insert into child(cname, age, user_id) values("Hernandez", 33, 1);
insert into child(cname, age, user_id) values("Iniesta", 50, 1);
insert into child(cname, age, user_id) values("Isco", 2, 1);


#
# POPULATING DDATE (30 days)
#

insert into ddate values('2018-01-01', FALSE);
insert into ddate values('2018-01-02', FALSE);
insert into ddate values('2018-01-03', FALSE);
insert into ddate values('2018-01-04', FALSE);
insert into ddate values('2018-01-05', FALSE);
insert into ddate values('2018-01-06', FALSE);
insert into ddate values('2018-01-07', FALSE);
insert into ddate values('2018-01-08', FALSE);
insert into ddate values('2018-01-09', FALSE);
insert into ddate values('2018-01-10', FALSE);
insert into ddate values('2018-01-11', FALSE);
insert into ddate values('2018-01-12', FALSE);
insert into ddate values('2018-01-13', FALSE);
insert into ddate values('2018-01-14', FALSE);
insert into ddate values('2018-01-15', FALSE);
insert into ddate values('2018-01-16', FALSE);
insert into ddate values('2018-01-17', FALSE);
insert into ddate values('2018-01-18', FALSE);
insert into ddate values('2018-01-19', FALSE);
insert into ddate values('2018-01-20', FALSE);
insert into ddate values('2018-01-21', FALSE);
insert into ddate values('2018-01-22', FALSE);
insert into ddate values('2018-01-23', FALSE);
insert into ddate values('2018-01-24', FALSE);
insert into ddate values('2018-01-25', FALSE);
insert into ddate values('2018-01-26', FALSE);
insert into ddate values('2018-01-27', FALSE);
insert into ddate values('2018-01-28', FALSE);
insert into ddate values('2018-01-29', FALSE);
insert into ddate values('2018-01-30', FALSE);

#
# Populating contracts
#

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 1, '2018-01-01', true, true, '2018-01-01', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 2, '2018-01-02', true, true, '2018-01-02', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 3, '2018-01-03', true, true, '2018-01-03', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 4, '2018-01-04', true, true, '2018-01-04', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 5, '2018-01-05', true, true, '2018-01-05', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 6, '2018-01-06', true, true, '2018-01-06', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 7, '2018-01-07', true, true, '2018-01-07', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 8, '2018-01-08', true, true, '2018-01-08', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 9, '2018-01-09', true, true, '2018-01-09', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 10, '2018-01-10', true, true, '2018-01-10', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 11, '2018-01-11', true, true, '2018-01-11', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 12, '2018-01-12', true, true, '2018-01-12', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 13, '2018-01-13', true, true, '2018-01-13', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 14, '2018-01-14', true, true, '2018-01-14', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 15, '2018-01-15', true, true, '2018-01-15', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 16, '2018-01-16', true, true, '2018-01-16', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 17, '2018-01-17', true, true, '2018-01-17', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 18, '2018-01-18', true, true, '2018-01-18', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 19, '2018-01-19', true, true, '2018-01-19', false, false);

insert into contract(regular, child_id, startDay, startMorning, startAfternoon, endDay, endMorning, endAfternoon) 
values(false, 20, '2018-01-20', true, true, '2018-01-20', false, false);

