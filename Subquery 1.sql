select * from emp 
where id in
(select id from sale where prod is null);