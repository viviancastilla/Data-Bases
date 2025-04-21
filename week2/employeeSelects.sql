use employeedb;

select * from employee;

select firstname,lastname,department from employee;

select firstname,lastname,department from employee
where department is not null;

select firstname,lastname,department from employee
where department is null;

select firstname,lastname,department from employee
where department is null and salary is null;

select firstname,lastname,department,salary from employee
where department is null or salary is null;

select firstname, lastname, salary from employee where salary < 4000;
select firstname, lastname, salary from employee where salary <= 4000;

select firstname, lastname, salary from employee where salary >= 4000;
select firstname, lastname, salary from employee where salary != 4000;
select firstname, lastname, salary from employee where salary <> 4000;
select firstname, lastname, salary from employee where salary = 4000;

select firstname, lastname, salary from employee where salary = 4000 or salary = 7000;

select lastname, firstname, salary from employee
order by lastname asc,firstname asc;

select lastname, firstname, salary from employee
order by lastname asc,firstname desc;

select lastname, firstname, salary from employee
order by lastname desc, firstname desc;

select employeeId, firstname, salary from employee
order by lastname desc;

select employeeId, firstname, salary from employee
order by lastname; -- asc

select employeeId, firstname, salary from employee 
order by lastname, firstname;

select count(*) from employee;
select count(*) as numberOfRows from employee;
select count(*) as "number of rows" from employee;
select count(*) numberOfRows from employee;

select count(department) as NumOfDepts from employee;
select count(salary) as NumOfSal from employee;

select count(*) as missingSalary from employee 
where salary is null;

--this returns 0 because count(salary) doesn't include null rows
select count(salary) as missingSalary from employee 
where salary is null;

select count(salary) as hasSalary from employee;
select count(*)-count(salary) as missing from employee;

select count(salary) as lessThan5000 from employee 
where salary<5000;

select * from employee where salary<5000;

select min(salary) from employee;
select min(salary) as min from employee;
select max(salary) as max from employee;
select min(salary) as min, max(salary) as max from employee;
select max(salary)-min(salary) as difference from employee;

select sum(salary) as sum from employee;
select avg(salary) as average from employee;
select round(avg(salary),2) as average from employee;

select firstname, rand() from employee;
select firstname, rand() as sortkey from employee;

select firstname, rand() as sortkey from employee 
order by sortkey asc;

select * from employee where firstname in ('Vera','Matt');
select * from employee where firstname not in ('Vera','Matt');
select * from employee where firstname in ('Vera','Matt','Amanda');

select * from employee where firstname='Vera' or 
firstname='Matt' or firstname='Amanda';

-- error comma missing -> names firstname as salary
select lastname,firstname salary from employee;

select lastname,firstname, salary from employee;

select lastname,firstname, salary from employee 
where salary between 3000 and 5000;

select lastname,firstname, salary from employee 
where salary between 3000 and 5000 
order by salary asc;