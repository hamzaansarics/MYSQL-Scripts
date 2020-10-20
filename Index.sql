#Index , making fast search when we have lot of data specilay in joining phase
create index dd on flash_out(dept);

#Showing , 
show index from flash_out;

#Droping Index
drop index dd on flash_out;