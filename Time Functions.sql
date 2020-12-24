# Current_Time , return simple time of system if you are in sys
# Current_Time = Curtime
select current_time();
select curtime();

# Curent_timestamp , return time with date
select current_timestamp();


# time , only return time from date & time
select time(sysdate());

# Hour , only return Hour from date & time
select hour(sysdate());

# Minute , only return Minute from date & time
select minute(sysdate());

# Second , only return Second from date & time
select second(current_timestamp());

# Microsecond , only return Microsecond from date & time
select microsecond(curtime());

#Timediff , return difference b/w two times
select timediff("10:20:30.50","05:10:15.25");

#Addtime , return in addition in time
select addtime(sysdate(),"01:20:30.003");

#subtime , return substraction in time
select subtime(sysdate(),"01:05:10.9991");

#maketime , putting three params they will make them time
select maketime(10,20,20);


#timestamp , putting date & time as two params they will make them one output
select timestamp("2020-05-10","10:20:50.9090");

#time_format , important function we can get any of time using time formats
############# Hour Format #########

select time_format(sysdate(),"%h");
select time_format(sysdate(),"%H");
select time_format(sysdate(),"%g");
select time_format(sysdate(),"%G");

########## Minute Format ##########
select time_format(sysdate(),"%i");

########## Second Format ##########
select time_format(sysdate(),"%s");

########## Microsecond Format ##########
select time_format(sysdate(),"%f");

########## AM/PM Format ##########
select time_format(sysdate(),"%p");

#time_to_sec , they will convet time into seconds
select time_to_sec(curtime());

#sec_to_time , they will convert seconds to time
select sec_to_time("342455");

