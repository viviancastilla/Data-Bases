use employeedb;

delete from employee;

insert into employee values(1,'Matt','River','ict',5000);
insert into employee values(2,'Mary','River','admin',7000);

insert into employee values(3,'Vera','Jones',null,null);

insert into employee (employeeId, firstname, lastname, department, salary)
values(4,'Amanda', 'Jones','transportation',3000);

insert into employee (employeeId, firstname, lastname, salary)
values (5, 'Arthur', 'Harris', 2500);

insert into employee (employeeId, firstname, lastname, department)
values (6, 'Vera', 'Smith', 'marketing');

insert into employee (employeeId, firstname, lastname, department, salary)
values(7, 'Mary-Ann', 'Smith', 'ict', 3500);

insert into employee (employeeId, firstname, lastname, department, salary)
values (8, 'Mary Ann', 'Wilkes', 'admin', 7000);

insert into employee values(9, 'Luke','Walker',null,null);

-- note: columns in different order!
insert into employee (department, lastname, employeeId, salary, firstname)
values ('ict', 'Brown', 10, 4000, 'Olivia');

-- in javascript:
-- insert into employee (employeeId, firstname, lastname, department, salary) 
-- values(?,?,?,?,?)

