drop table departments;
--create table department
create table departments (
dept_no varchar (4) not null primary key,
dept_name varchar(255)
);
select * from departments;

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;


drop table dept_manager;
--create table dept_manager
create table dept_manager(
dept_no varchar (30) not null,
emp_no int,
primary key (dept_no,emp_no)
);
select * from dept_manager;


DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1) NOT NULL CHECK (sex in ('F','M')),
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * FROM employees;


drop table salaries;
--create salaries table 
create table salaries(
emp_no int not null primary key,
salaries int not null
);
select * from salaries; 

drop table titles;
--create table titles
create table titles (
title_id varchar(300)not null primary key,
titile varchar(100) not null
	);
select * from titles;