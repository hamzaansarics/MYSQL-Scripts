#Update
update  emp set high_salaries = 90000
where id = 2;


#little bit complex Updation
update emp set high_salaries = 2000
where id in  (1,4);

update emp set high_salaries = 10000;

select * from emp;
