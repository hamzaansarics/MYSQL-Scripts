#Genrate Random Values between 0-1
select rand();

#Genrate Random Values between 1-10
select rand()*10;

#Removing Decimels Values in downward
select floor(4.79); # 4

#Removing Decimels Values in upward
select ceil(4.55); # 5

#Removing Decimels Values in downward / upward if decimal values is >= .5 the upward else downward
select round(4.52); #5
select round(4.49); #4

#Taking Power of ...
select pow(5,2); # 25

#Taking Square Root 
select sqrt(25); # 5
select round(sqrt(10)); # 3

#removing sign as + or -
select abs(-10); # 10
select abs(+10); # 10

#Converting >=0 ,0 and <0,-1
select sign(20); # 1
select sign(0); # 0
select sign(-20); # -1

#Taking Suare Root for a Salary Column then ROUND it
select * , ROUND(sqrt(salary)) as SQRRT
from second;
#OUTPUT
#id dept loc		  salary  SQRT
#1	da	kalowal		  80000	  283
#2	ds	kalowal		  300000  548
#3	web	tandilawanla  50000	  224
#4	seo	faislabad	  80000	  283

#Geting Random Values of Table
Select * from second
order by rand();
#id dept location		salary
#3	web	tandilawanla	50000
#2	ds	kalowal			300000
#4	seo	faislabad		80000
#1	da	kalowal			80000


