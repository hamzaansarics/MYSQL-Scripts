select * from new.second;

#Adding Column , i'm going to add new column in existing table
alter table second
add new_col int;

#Reordering Table , change the order of columns as first to last last to first
alter table second
modify new_col int
after dept;

#Changing Datatype 
alter table second
modify new_col varchar(50);

#Constraints , if we forget constrains in creating table so we can add with alter after 
alter table second
add unique (new_col);

#Changing Col_Name 
alter table second
change column salary high_salaries int;

#Changing table_Name
alter table second
rename flash_out;

#Changing auto increment value
alter table flash_out
auto_increment = 4;

#Deleting Column
alter table flash_out
drop column new_col 