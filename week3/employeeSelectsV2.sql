-- https://mariadb.com/kb/en/identifier-names/
-- https://mariadb.com/kb/en/identifier-case-sensitivity/

use employeedb;

select firstname from employee where firstname like '_a%';
select firstname from employee where firstname like '_a';
select firstname from employee where firstname like '_a__';
select firstname from employee where firstname like '_at_';

select firstname from employee where firstname like 'M%';
select firstname from employee where firstname like '%r_';
select firstname from employee where firstname like '%Ann';

select * from employee where firstname like 'Mary_Ann';
insert into employee values(11,'Mary_Ann', 'Brown',null,null);
insert into employee values(12,'Mary%Ann', 'River',null,null);

select * from employee where firstname like 'Mary_Ann';
select * from employee where firstname like 'Mary%Ann';

insert into employee values(13,'Mary_Joan', 'River',null,null);
insert into employee values(14,'Mary Joan', 'River',null,null);

select * from employee where firstname like 'Mary_Ann';
select * from employee where firstname like 'Mary%Ann';
select * from employee where firstname like 'Mary%';
select * from employee where firstname like 'Mary\_Ann';
select * from employee where firstname ='Mary_Ann';
select * from employee where firstname like 'Mary\_%';

select * from employee where firstname like 'Mary\%Ann';
select * from employee where firstname ='Mary%Ann';
select * from employee where firstname like '%\%%';
select * from employee where firstname like '%\_%';

update employee set salary=1500 where salary is null;

select * from employee where salary=(select min(salary) from employee);
select avg(salary) from employee;
select round(avg(salary),2) from employee;
select * from employee where salary>(select avg(salary) from employee);

select round(avg(salary),4) from employee;
select truncate(avg(salary),4) from employee;
select ceiling(avg(salary)) from employee;
select ceil(avg(salary)) from employee;
select floor(avg(salary)) from employee;

select firstname,lastname, salary, case
    when salary>6000
    then 'top worker'
    else '-' end as notes
from employee
order by salary desc;

select firstname,lastname, salary, case
    when salary>6000
    then 'top worker'
    else '-' end as notes, department
from employee
order by salary desc;

select firstname,lastname, salary, case
    when salary>6000
    then 'top worker'
    end as notes, department
from employee
order by salary desc;

select firstname,lastname,salary, case
    when salary=(select min(salary) from employee) then 'min'
    when salary=(select max(salary) from employee) then 'max'
    else ' ' end as minmax
from employee;

-- not working ok
select firstname,lastname,salary, case
    when salary=(select min(salary) from employee) then 'min'
    when salary=(select max(salary) from employee) then 'max'
    when salary>(select avg(salary) from employee) then 'more than avg'
    else ' ' end as minmax
from employee;

select firstname,lastname,salary, 
    case
        when salary=(select min(salary) from employee) then 'min'
        when salary=(select max(salary) from employee) then 'max'
        else '' end as minmax,
    case 
        when salary>(select avg(salary) from employee) then '*'
        else '' end as 'more than avg'
from employee;

select firstname,lastname,salary, 
    case
        when salary=(select min(salary) from employee) then 'min'
        when salary=(select max(salary) from employee) then 'max'
        else '' end as minmax,
    case 
        when salary>(select avg(salary) from employee) then '*'
        else '' end as 'more than avg'
from employee
order by salary desc;

select firstname,lastname, case 
when department is null then 'missing department'
else '' end as missing from employee;

select firstname, lastname, salary, 1.1*salary as newSalary from employee;

select count(*)-count(department) as missing from employee;

select lastname, count(*) as amount from employee 
group by lastname;

select lastname, count(*) as amount from employee 
group by lastname 
order by amount desc;

select lastname, count(*) as amount from employee 
group by lastname 
order by amount desc, lastname asc;

select lastname, count(*) as amount from employee 
group by lastname having amount>1
order by amount desc, lastname asc;

delete from employee where employeeId=12; -- Query OK, 1 row affected
delete from employee where employeeId=12; -- Query OK, 0 rows affected

delete from employee where salary>3000 and salary<5000;
delete from employee where salary=5000 or department='admin';
delete from employee where lastname in ('Harris','Smith','Walker');
delete from employee where firstname like 'Mary%';
delete from employee; -- deletes all rows !!!!!


update employee set department='ict', salary=4500; -- Warning updates all rows!!!!
update employee set department='ict', salary=4500 where employeeId=3;

update employee set salary=1.1*salary; -- gives everybody rise updates all rows!!!
update employee set salary=round(1.1*salary,2) where round(1.1*salary,2)<9999.99;

