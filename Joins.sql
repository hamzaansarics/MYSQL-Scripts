#Inner Join , when requird information is existing two tables so we have to join both and make them one
select id,name,dept from emp inner join name
on emp.id=name.nid;

#Cross join 
select * from emp cross join name
on emp.id=name.nid;

select * from emp,name
where emp.id=name.nid;

#Left Join , include all left table data 
select * from emp left join name
on emp.id=name.nid;

#Right Join , include all right table data
select * from emp right join name
on name.nid=emp.id;