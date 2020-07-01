#Constrains , they are restriction on data 
#we can't insert data witnout satisfyng these condtions
create table constraited(
id int primary key auto_increment,
name varchar(355) not null,
address varchar(500) unique,
age int check(age >18 and age <50)
);
#this is properly executed  
insert into constraited(name,address,age)
values 
("Hamza","Faislabad",18);
# this will genrate error by age constraint
insert into constraited(name,address,age)
values 
("Hamza","Faislabad",17);