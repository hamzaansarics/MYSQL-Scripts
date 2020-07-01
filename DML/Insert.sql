#Insert , data insertion
insert into sale (prod,location,sale_date)
values 
("Mobile","Failsabad",(select sysdate())),
("Laptop","Islambad",(select curdate()));

select * from sale;