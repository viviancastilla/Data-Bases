-- custom variables (per session)

use employeedb;

-- set statement with := or =
set @x:=1;
select @x;

set @y=2;
select @y;

-- to check defined variables
select * from information_schema.USER_VARIABLES;

-- := operator within sql-statement

select @avg:=round(avg(salary),2) from employee;
select @avg;
select * from information_schema.USER_VARIABLES;

update employee set salary=@avg where salary is null;

update employee set salary=@avg where salary <@avg;

-- select ... into
select round(avg(salary),2) into @a from employee;
select @a;
select * from information_schema.USER_VARIABLES;

delete from employee where salary>@avg;
update employee set salary=@a where salary=@avg;

-- to empty user variables
flush USER_VARIABLES;
select * from information_schema.USER_VARIABLES;