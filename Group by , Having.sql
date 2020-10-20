#Group by , we can count number of values in a group
select location,count(location)  from emp
group by location;

#Having , if we want to apply a condtion on group data output so we have to use the having clause
select location , count(location) from emp
group by location 
having count(location)<2;