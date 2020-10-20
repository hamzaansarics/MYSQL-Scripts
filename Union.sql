#Union all , they will merge columns horizently & values will be all included as same or not 
#Prequisties is table column should be same 
select location from emp
union all
select location from sale;

#Union , they will merge also horizently & they will not include repeated rows
select location from emp
union
select location from sale;
