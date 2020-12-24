#Upper Case
select id,dept,upper(dept) from second;

#Lower Case
select id,dept,lower(dept) from second;

#Lcase = Lower Case
select id,dept,lcase(dept) from second;

#Ucase = Upper Case
select id,dept,ucase(dept) from second;

#Lenght of Chracters
select id,dept,character_length(dept) from second;

#char_legth = Length of Chracter
select id,dept,char_length(dept) from second;

#Size of Chrachter in Memory as Bytes
select id,dept,length(dept) from second;

#Concating Strings 
select id,dept,concat(dept,"  ",length(dept)) from second;

#They will also concat but they will give parameter for seprator
select id,dept,concat_ws(" - ",dept,length(dept)) from second;

#LTRIM , Removing Left Space
select ltrim("     pakista is my country           ") as LTRIM;

#RTRIM , Removing Right Space
select rtrim("     pakista is my country           ") as RTRIM;

#TRIM , Removing Right & Left both Spaces
select trim("     pakista is my country           ") as TRIM;

#Position , Find the position
select position("cou" in "pakistan is my country") as Postion;

#INSTR , They will also find position but they will not take in keyword as position
select instr("pakistan is my country","my") as INSTR;

#LOCATE , They will also find position but they will not take in keyword as position & they can get starting position param
select locate("my","pakistan is my country",14) as LOCATE;