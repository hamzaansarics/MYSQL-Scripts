#Creating View , View are use to handle the code snipperts which can be easyly called
#as we do in programming by making a simple function and call it late as we want
create view snipperts
as 
select id,name,courses_name from courses c inner join name n 
on c.id=n.nid;
select * from snipperts;

#Altering as we want to change our view
# "alter" = "create or replace"

alter view snipperts
as 
select id,name,courses_name,location from courses c inner join name n 
on c.id=n.nid;

create or replace view snipperts
as 
select id,name,courses_name,location from courses c inner join name n 
on c.id=n.nid;
select * from snipperts;

#Rename , we can change of view name
rename table snipperts
to new_view;
#Drop , delete the view permanently
drop view func;