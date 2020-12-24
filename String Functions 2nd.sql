# Substring will return char from start to end pos parms
#Substring = Substr = Mid
select substring("Pakistan is my country",2,5);

#SUBSTRING_INDEX , they will retunr
select substring_index("hamza@asnari.com","@",1);

#LEFT , they will return left piece of string
select left("hamza@asnari.com",5) as LEFT_;

#RIGHT , they return right side of data 
select right("www.github.com/hamzaasnarics",5) as RIHGT_;

#LPAD , they will add extra string in left side if char_count < threshold
select lpad("Hamza asnari is data analyst",35,"-");

#RPAD , they will add extra string in right side if char_cout is < threshold
select rpad("data sceince lover","50","-");

#Space , they will add extra spaces 
select space(20);

#REPLACE , replacing value
select replace("i was web developer","was web developer","am now data analyst") as REPLACE_;

#REVERSE , make reverse of string
select reverse("Power");

#STRCMP , compare the string values if equal ,0 if Left str greater ,1 else -1
select strcmp("pashaa","pashav");

#FIELD , they will find single in a list
#first is requird other 3 are list body
select field("nice","power","NICE","better");

#FIND_IN_SET , same as field list but they will find inside the set
select find_in_set("nice","pakistani,people,are,very,nice");

#FORMAT , they work with float values to make accurate as we want
select format(999.2467,2);

#HEX , they will turn string into hexa values
select hex("khan@pakistan159");

#HOUR , return hour of given time
select hour("10:20");
