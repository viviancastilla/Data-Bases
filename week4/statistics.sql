drop database if exists statistics;
create database statistics;

use statistics;

create table no salary(
    employeeId integer not null primar key,
    firstname varchar (20),
    lastname varchar()
)

select * from no_salary;

drop user if exists 
--to redirect output to file use > and filesname for ex. > result.txt
-- mysql -u bigboss -p <statistics.sql >result.txt

create table missing(
    id integer,
    fname varchar(20)
);

insert into missing (id,fname) select employeeId, firstname 
from employeedb.employee where salary is null;

select * from missing; 
-- run frist as bigboss to grant priviledges to maria
-- grant all privileges on statistics. * to 'maria'@'localhost'; --comment this when run as maria