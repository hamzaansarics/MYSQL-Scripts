#Rollback , if we wrongly change in data then we can rollback the work at on commit
insert into emp (id,dept,location,high_salaries)
values
(5,"de","Lahore",95000);
select * from emp;
rollback;

#Commit , they save permanent in database we can't rollback after commit
insert into emp (id,dept,location,high_salaries)
values
(5,"de","Lahore",95000);
select * from emp;
commit;
rollback;

#Savepoint , simple rollback will reverse changes until commit but we want specific rollback not all so
# we use savepoint for specific rollback 
savepoint t1;
insert into emp (id,dept,location,high_salaries)
values
(6,"web","Islamabad",195000);


select * from emp;
savepoint t2;
insert into emp (id,dept,location,high_salaries)
values
(7,"graphic","Karachi",75000);


select * from emp;

rollback to t1;
