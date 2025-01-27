-- default schema iin DB's
-- Postgres --> public
-- MSSQL --> dbo
-- Oracle / MySQL --> sys


create table employees
(
	id			int,
	name		varchar(20), 
	dept_id		varchar(10),
	salary		float -- 2500.50 
);

drop table employees;

alter table employees rename to employees_new;
alter table employees_new rename to employees;

select * from employees;

alter table employees add column doj date;

insert into employees (id, name, dept_id, salary, doj) 
values (1, 'Sameer', 'D1', 3000, to_date('2001-12-20', 'YYYY-MM-DD') );

10 --> integer
'10' --> integer or string ?

select to_date('2001-12-20', 'YYYY-MM-DD');
select 'techTFQ'
select 100


select * from employees;
select * from department;

create table department 
(
id int,
name varchar(20)
);

alter table department alter column id type varchar(10);

insert into department values('D001', 'HR')

select * from employees;
select * from department;


insert into employees values (1, 'Raj', 'D1', 4000);
insert into employees values (1, 'Mohan', 'D2', 5000);
insert into employees values (1, 'Kumar', 'D1', 0);

insert into employees values (1, 'Raj', 'D1', 4000);

select * from employees;


-- Constraints: -- Restrictions can be added to a table/column to avoid loading incorrect data
Primary key -- used to have Unique values and non null values 
Unique key -- used to have Unique values but can have null values too
Check -- checks the values in the column is as per definition 
Not null -- does not allow null values in the column
Foreign key -- used to build relations between tables 
Identity 
Default

drop table employees;
create table employees
(
	id			int primary key, 
	name		varchar(20) not null, 
	dept_id		varchar(10) references department(id),
	salary		float  check (salary > 0)
);

drop table department ;
create table department 
(
id varchar(10) primary key ,
name varchar(20) not null
);

select * from employees;
select * from department;

insert into department values('D001', 'HR')

insert into employees values (1, 'Raj', 'D001', 4000);
insert into employees values (2, 'Mohan', 'D001', 5000);
insert into employees values (3, 'Kumar', 'D001', 1);
insert into employees values (4, 'Raj', 'D001', 4000);


alter table employees add column doj date;
alter table employees drop column doj;
alter table employees add column doj date default to_date('2000-12-20', 'YYYY-MM-DD');

/*
drop table employees;
create table employees
(
	id			int generated always as identity primary key, 
	name		varchar(20) not null, 
	dept_id		varchar(10) references department(id),
	salary		float  check (salary > 0)
);*/

alter table employees alter column id add generated always as identity (start with 50);
alter table employees alter column id drop identity;

insert into employees values (default, 'Hanan', 'D001', 4000);

select * from employees;



-- Assignment:

1) Choose either a Banking dataset or Healthcare dataset or sales order dataset or any other
2) Create a new database for above dataset
3) Create minimum 4 tables which can hold meaningful data from above dataset.
4) These tables should have proper constraints.
5) Load sample data into these tables atleast 5 record in a table.









