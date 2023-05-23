## SQL Join
/*
1.Inner Join
*/

/* SQL joins are actually help you to retrive data from two or more databases tables.
This tables will be interlinked with primary keys and foreign key. 
*/

#Crete database for using the above joins
create database customers;

## Create table name student with columns names
create table student(	
student_id int auto_increment,
first_name varchar(23) not null,
last_name varchar(24) not null,
age int not null,
primary key (student_id)
);

## Insert values into table
select * from student;
insert into student values (1,'Anand','Ambuskar',25),
(2,'Tushar','Sawale',26),
(3,'Atul','Sangokar',27),
(4,'Roshan','Tayde',26);

## check values from table
select * from student ;

## Describe table
desc student;

## create another table for joining 
create table department(
student_id int not null,
department_name varchar(25),
foreign key (student_id) references student(student_id)
);


## Insert values into table department
select * from department;
insert into department 
values (1,'Mechanical'),
(2,'Civil'),
(3,'Computer'),
(4,'Electrical');

## Description of table department
desc department;

## Apply inner join on table
select * from student inner join department
on student.student_id = department.student_id;


