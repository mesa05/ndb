create database cluster;
use cluster;
create table lab (id int primary key, data varchar(20))
  engine = ndbcluster;
insert into lab values (1, "data one");
insert into lab values (2, "data two");
insert into lab values (3, "data threee");
