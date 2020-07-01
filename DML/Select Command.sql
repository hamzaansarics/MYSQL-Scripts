#Showing All data
select * from flash_out;

#selecting specific columns
select dept,location from flash_out;

#selecting all data with condition / where clause
select * from flash_out
where id =4 ;

#selecting multiple record with condition
select * from flash_out
where id =1 or id =3;

#Selecting with IN keyword , return all values of in keyword
select * from flash_out
where id in (1,2,4);

#Selecting with NOT IN keyword , return all values which are not mention in IN keyword
select * from flash_out
where id not in (1,4);

#Selecting with Like Keyword
# we use wildcard charcters as "%","_"
# "f%" , mean start string should be f & other all whatever
select * from flash_out
where location like("f%");

# "%l" , end should be at "l" before "l" whatever 
select * from flash_out
where location like ("%l");

# "%ow%" , means in between of string should be "ow" start & end whatever
select * from flash_out
where location like ("%ow%");

# "f%d" , start and end with "f" and "d" but in between whatever
select * from flash_out
where location like ("f%d");

# "_a%" start first value no idea but second is "a" & others are whatever
select * from flash_out
where location like ("_a%");  

# "%a_" last value no idea but second last is a other are whatever
select * from flash_out
where location  like ("%a_");

# "%a_" last value no idea but second last should not this and other are whatever 
select * from flash_out
where location not like ("%a_");


#Select with REGEX
# they are same as wildcard but this command is very short
# "|" they represent as or operator within single string
select * from courses
where courses_name REGEXP "web|seo";

#Select all data through courses_name where they concatin any of alphabet between a to z
select * from courses
where courses_name REGEXP "[a-z]";

#Select with Between , they will select data with between range
#in between  first is inclusive , last is exclusive
select * from flash_out
where high_salaries between 10000 and 80000;

select * from flash_out
where dept between "d" and "w";