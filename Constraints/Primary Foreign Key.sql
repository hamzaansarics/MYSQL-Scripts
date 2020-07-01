#Creating Foreign Key
create table doctor(
id int primary key auto_increment,
n_count int,
foreign key(n_count) references patient (pid)
);

insert into doctor(n_count)
values 
(1),
(2),
(1),
(2),
(3),
(4),
(3),
(2);

create table patient(
pid int primary key AUTO_INCREMENT,
n_name varchar(50)
);
insert into patient(n_name)
values
("Shabeer Gujjar"),
("Hamza Ansari"),
("Farhan Bhatti"),
("Aamir Mughal"),
("Arbaz Gujjar"),
("Usman Malhi");

#Altering Foreing Key , if we forget to place foreign key in creating table so we can place it later
alter table doctor
add foreign key(n_count) references patient(pid);

select * from doctor;


