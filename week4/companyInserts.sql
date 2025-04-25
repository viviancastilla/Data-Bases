use companydb;

insert into department 
(departmentId, departmentName, departmentFloor, departmentDescription)
values(3, 'marketing', 'second floor', 'motto: buy from us')

insert into department (departmentId, departmentName, departmentFloor)
values(4, 'trasnportation', 'basement');

--insert to employee
insert into department (employeeId, firstname, lastname, salary, departmentNumber)
values(1, 'Amanda', 'Jones', 3000,4);

insert into department (employeeId, firstname, lastname, salary, departmentNumber)
values(2, 'admin', 'top floor', 'Great leaders');

insert into department (employeeId, firstname, lastname, salary, departmentNumber)
values(3, 'marketing', 'second floor', 3000,4);

insert into department (employeeId, firstname, lastname, salary, departmentNumber)
values(4, 'Amanda', 'Jones', 3000,4);

insert into employee (employeeId, firstname, lastname, department)
values(5, 'Mary Ann', 'Ann', 4500,3);

