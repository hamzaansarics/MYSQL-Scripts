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

#Selecting with IN keyword
select * from flash_out
where id in (1,2,4);

#Selecting with Like Keyword
# "f%" , mean start string should be f & other all whatever
select * from flash_out
where location like("f%");

# "%l" , end should be at "l" before "l" whatever 
select * from flash_out
where location like ("%l");

# "%ow%" , means in between of string should be "ow" start & end whatever
select * from flash_out
where location like ("%ow%");

# "_a%" start first value no idea but second is "a" & others are whatever
select * from flash_out
where location like ("_a%");  

# "%a_" last value no idea but second last is a other are whatever
select * from flash_out
where location like ("%a_");