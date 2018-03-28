

create table Child (

	child_id int primary key auto_increment,
    cname char(20),
    age int,
    baby bool

);

create table Halfday(

	dday date,
    midDay char(20),
    offday bool,
    
    primary key (dday, midDay)

);

create table Contract(

	contract_id int primary key auto_increment,
    cname char(20) references Child(cname),
    ctype char(20),
    phone int,
    email char(20)

);

create table Reservation(

	contract_id int references Contract(contract_id),
	child_id int references Child(child_id),
    dday date references Halfday(dday),
    midDay char(20) references Halfday(midDay),
    
    primary key (contract_id, child_id, dday, midDay)
    
);

create table users(

	user_id int not null auto_increment,
    user_name char(45),
    email char(45),
    primary key(user_id)
);