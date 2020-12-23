#Q-1) How we can filter Duplicate Data in a table ?

select   * from emp;

#Q-2) How can we retrive portion of a column value
-- pakistan , pak

select substring(location,2,5) from emp;

#Q-3) How to convert male to female & 1 to 0
update emp set gender = if(gender="M","F","M"),stats=if(stats=1,0,1) ;
update emp set gender =
case
	when gender="M"  then  "F" else "M"
recycleend, stats=
case
	when stats=1  then  0 else 1
end;
select * from emp;

#Q-4) How can we fetch a particular number of records from a table ?

select * from emp
order by location
limit 3,2;
select * from emp;
#Q-5) Find nth lowest salary
select max(high_salaries) from emp
where high_salaries!=(select max(high_salaries) from emp)

