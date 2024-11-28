use pranaya;

create table employes(
eid int primary key auto_increment,
ename varchar(100),
esal int,
ecountry varchar(50)
);

insert into employes (ename,esal,ecountry) values ('A',10000,'IND'),('B',20000,'USA'),('C',30000,'Uk'),('D',40000,'IND'),('E',50000,'UK');

select * from employes;

#count
select count(*) from employes;
select count(*) as total_emp from employes;

#sum
select sum(esal) from employes;

#avg
select avg(esal) from employes;

#max
select max(esal) from employes;

#min
select min(esal) from employes;

#group by
select count(eid),ecountry from employes group by ecountry;

select min(esal),ecountry from employes group by ecountry;

select min(esal),ecountry from employes group by ecountry having min(esal) >20000;
