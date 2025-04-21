show databases;
--(first command)
--create database firstdb;

drop database if exists firstdb;

create database firstdb;
use firstdb;

create table person(
    id integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null
);

create table person;

create table firstdb.person(
    id integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null
);

show tables;
describe person;
show create table person;

select * from person;
insert into person (id, firstname, lastname)
values(1, 'Matt', 'River');

select * from person;

insert into person(id, firstname, lastname)
values(2,'Mary', 'Jones');

select * from person;

insert into person(id, firstname, lastname)
values(3, 'Amanda', 'Smith');

select * from person;

insert into person(id, firstname, lastname)
values(4, 'Vera', 'River');

--If we leave a list 
--the same order than they are in create statement
--When you add the columnlist, you don't have to remember
--the original order

--How to select from table person, and it will display the firstname(s) or lastname(s)--
--depending on what you what you want to display--
select firstname from person;
select lastname from person;

select lastname, firstname from person;


select distinct lastname from person;

select id, firstname from person where lastname='River';

select lastname,firstname,id from person where lastname='River';


--error: Brown is now the firstname and Jack the lastname
insert into person values(5, 'Brown', 'Jack');
-- how to update 
update person set firstname='Jack', lastname='Brown' where id=5;
--how to delete
delete from person where id=5;

--warning: this affect all rows, because no where
update person set firstname='Jack', lastname='Brown';
