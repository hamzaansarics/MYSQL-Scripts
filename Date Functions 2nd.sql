#Adddate , we can add year,week,month,hour,day everything related to date & time
# Adddate = Date_Add
select adddate(sysdate(),interval 500 hour);
select Date_Add(curdate(),interval 10 month);

#SUBDATE , return substraction from date 
select subdate(curdate(),interval 20 week);
select date_sub(sysdate(),interval 5 year);

#Datediff , return diff b/w dates like dob & now
select datediff(sysdate(),"1997-06-10");

#TO_Days , return total days from start year[as 0] to now
select to_days(sysdate());

#FROM_DAYS , return date by putting total days
select from_days("737909");

#Period_Add , add value in from days input
select period_add("737909","20");

#Period_Diff , substract value from from_days input
select period_diff("737909","3243242");

#Date_Format , change the date format *
############ Day Format ##############
select date_format(sysdate(),"%d");
select date_format(sysdate(),"%e");
select date_format(sysdate(),"%D");
select date_format(sysdate(),"%j");

########## Month Format ##############
select date_format(curdate(),"%M");
select date_format(sysdate(),"%b");
select date_format(sysdate(),"%m");
select date_format(sysdate(),"%c");

######### Year Format ###############
select date_format(sysdate(),"%Y");
select date_format(sysdate(),"%y");

######### Week Format ###############
select date_format(sysdate(),"%a");
select date_fo																				rmat(curdate(),"%W");
select date_format(curdate(),"%w");

#str_to_date , for converting string to date we have to pass a format it
select str_to_date("June 10 1997","%M %d %Y")







