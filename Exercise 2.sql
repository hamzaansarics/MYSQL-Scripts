## Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select FIRST_NAME as worker_name from worker;

## Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select ucase(first_name) from worker;

## Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct department from worker;

## Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(first_name,1,3) from worker;
select left(first_name,3) from worker;

## Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
select instr(first_name ,binary'a') from worker
where first_name = "Amitabh";

## Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(first_name) from worker;

## Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select ltrim(department) from worker;

## Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct department, length(department) from worker;

## Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select replace(first_name,'a','A')  from worker;

## Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
select concat(first_name,' ',last_name) as full_name from worker;


## Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker
order by first_name;

## Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker
order by first_name asc,  department desc;

## Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker
where first_name in ("Satish","Vipul");

## Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker
where first_name not in ("Statish","Vipul");

## Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from worker
where department ="Admin";

## Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker
where first_name regexp "a";
select * from worker
where first_name like "%a%";


## Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker
where first_name like "%a";

## Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker
where first_name like "%h" having length(first_name)=6;
select * from worker
where first_name like "_____h";

## Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker
where salary between 100000 and 500000;

## Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker
where year(joining_date)=2014 and month(joining_date)=2;

## Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(first_name) from worker
where department="Admin";

## Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
select concat(first_name,' ',last_name) as name,salary from worker
where salary between 50000 and 100000;

## Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
select department,count(department) from worker
group by department order by count(department) desc;

## Q-24. Write an SQL query to print details of the Workers who are also Managers.
select * from worker inner join title
on worker.worker_id=title.worker_ref_id
where worker_title="Manager";
select * from title;

## Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select worker_title,affected_from,count(*)
from title
group by worker_title,affected_from 
having count(*) > 1;

## Q-26. Write an SQL query to show only odd rows from a table.
select * from title
where worker_ref_id%2!=0;
select * from title
where mod(worker_ref_id,2)<>0;

## Q-28. Write an SQL query to clone a new table from another table.
select * into new_tab from worker;
create table new_table like worker;
select * into new_table from worker;

## Q-29. Write an SQL query to fetch intersecting records of two tables.
-- (select * from worker)
 -- intersect
-- (select * from title);
## Error is genrting i don't know to how to solve it

## Q-30. Write an SQL query to show records from one table that another table does not have.
-- SELECT * FROM Worker
-- MINUS
-- SELECT * FROM Title;
## Error is genrting i don't know to how to solve it

## Q-31. Write an SQL query to show the current date and time.
select sysdate() from dual;

## Q-32. Write an SQL query to show the top n (say 10) records of a table.
select * from worker
limit 1,10;
select * from worker
order by salary asc;
## Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select distinct salary from worker
order by salary asc
limit 4,1;

## Q-34. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
SELECT distinct Salary
FROM Worker W1
WHERE 2-1 = (select count(distinct salary) from worker as w2
where w2.salary > w1.salary
);

## Q-35. Write an SQL query to fetch the list of employees with the same salary.
select * from worker w1,worker w2
where w1.salary = w2.salary
			and 
w1.worker_id <> w2.worker_id;


## Q-36. Write an SQL query to show the second highest salary from a table.
select salary from worker w1
where 2-1=(select count(distinct salary) from worker w2
where w2.salary > w1.salary);

## Q-37. Write an SQL query to show one row twice in results from a table.
select * from worker as w2
union all
select * from worker as w1
order by worker_id;

## Q-39. Write an SQL query to fetch the first 50% records from a table.
delimiter //
	 create procedure aks(in x int)
		select * from ds
        limit x;
    end //
delimiter ;

call aks((select count(ids) from ds)/2);

## Q-40. Write an SQL query to fetch the departments that have less than five people in it.
select department,count(department) from worker
group by department
having count(department)<5;

## Q-41. Write an SQL query to show all departments along with the number of people in there.
select department,count(department) from worker
group by department ;

## Q-42. Write an SQL query to show the last record from a table.
select * from worker
where worker_id = (select max(worker_id) from worker);

## Q-43. Write an SQL query to fetch the first row of a table.
select * from worker
where worker_id = (select min(worker_id) from worker); 

## Q-44. Write an SQL query to fetch the last five records from a table.
select * from worker
order by worker_id desc
limit 5;

## Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
select concat(first_name,' ',last_name) as name,department,salary from worker
where salary = (select max(salary) from worker);

## Q-46. Write an SQL query to fetch three max salaries from a table.
select distinct salary from worker
order by salary desc
limit 3;

## Q-47. Write an SQL query to fetch three min salaries from a table.
select distinct salary from worker
order by salary 
limit 3;

## Q-48. Write an SQL query to fetch nth max salaries from a table.
delimiter //
	create procedure nth_salary(in val int)
		select salary from worker w1
        where val-1=(select count(distinct salary) from worker w2
        where w2.salary > w1.salary);
	end //
delimiter ;
call nth_salary(2);

## Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select department,sum(salary) from worker
group by department ;

## Q-50. Write an SQL query to fetch the names of workers who earn the highest salary by their department.
select concat(first_name,'  ',last_name) as Name,department,max(salary) from worker
group by department
