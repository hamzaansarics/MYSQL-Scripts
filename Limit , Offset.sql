#limit , making a limit of fetching record mean how much we need the records
select * from sale
limit 5;

#Limit & Offset , they wrok as slice , start to end values for fetching result
select * from sale
limit 3,5;