drop database if exists employeedb;
create database employeedb;

use employeedb;

create table employee(
    employeeId integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    department varchar(15),
    salary decimal(6,2)
);

drop user if exists 'maria'@'localhost';
create user 'maria'@'localhost' identified by '12345';
grant select, insert on employeedb.employee to 'maria'@'localhost';

drop user if exists 'matt'@'localhost';
create user 'matt'@'localhost' identified by '4321';
grant all privileges on employeedb.* to 'matt'@'localhost';

Ilkka.Helio@bc.fi






