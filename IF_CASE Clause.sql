#IF , this is used as true and false 
select *,if(high_salaries>70000,"Satis","Fall") from emp;

#Case , but if we want to place a multiple condition then case is only option
select *,
Case
	when high_salaries>=50000 and high_salaries<=80000 then "Satisfying"
    when high_salaries>80000 and high_salaries<100000 then "Excelent"
    else "Out of Range"
End as CASES
from emp;