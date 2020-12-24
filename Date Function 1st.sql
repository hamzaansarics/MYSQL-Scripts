#Return Server Date
# current_date = currdate
select current_date();

#Return System Date
select sysdate();

#return Date as it as
select date("1997-06-10") as date;

#Return Month
select Month("1997-06-10");

#return Month Name
select monthname(current_date());

#Return Day
select day("1997-06-10");

#return day of week
select dayofweek(current_date());

#Return day of month
select dayofmonth(current_date());

#Return day of year
select dayofyear(sysdate());

#Return Day Name
select dayname(sysdate());

#Return Year
select Year(current_date());

#Return week
select week(sysdate());

#Return Week
select weekday("1997-02-02");

#Return Year with Week
select yearweek(sysdate());

#Return Quarter of year
select quarter("1997-12-02");

#[Extract]Return Everything about Date
select extract(year from sysdate()) as EXTRACTING;
select extract(month from sysdate());
select extract(day from sysdate());
select extract(quarter from curdate());
select extract(second from curdate());
select extract(microsecond from sysdate());
select extract(hour from sysdate());
select extract(minute from sysdate());
select extract(microsecond from sysdate());
select extract(hour_minute from sysdate());
