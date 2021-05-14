--create departments table
DROP TABLE departments

CREATE TABLE departments (
		dept_no VARCHAR,
		dept_name VARCHAR(30) NOT NULL,
		PRIMARY KEY (dept_no)
);

select * from departments

--create employees table
DROP TABLE employees

CREATE TABLE employees (
		employ_no  INTEGER PRIMARY KEY NOT NULL,
		employ_title_id  VARCHAR,
		birth_date DATE NOT NULL,
		first_Name VARCHAR(20),
		last_Name VARCHAR(20),
		sex VARCHAR,
		hire_date DATE NOT NULL
);

select * from employees

--create department employee table
DROP TABLE dept_employ

CREATE TABLE dept_employ (
		employ_no INTEGER, 
		dept_no VARCHAR, 
	FOREIGN KEY (employ_no) REFERENCES employees (employ_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

select * from dept_employ

--create department managers table
DROP TABLE dept_managers

CREATE TABLE dept_managers (
		dept_no VARCHAR, 
		employ_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY  (employ_no) REFERENCES employees (employ_no)
);

select * from dept_managers

--create salaries table
DROP TABLE salaries

CREATE TABLE salaries (
		employ_no INTEGER, 
		salary INTEGER,
	FOREIGN KEY (employ_no) REFERENCES employees (employ_no)
);

select * from salaries

--create titles table
DROP TABLE titles

CREATE TABLE titles(
		employ_title_id VARCHAR,
		title VARCHAR
);

select * from titles





