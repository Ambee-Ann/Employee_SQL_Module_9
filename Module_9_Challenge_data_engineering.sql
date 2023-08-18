DROP TABLE dept_emp;
CREATE TABLE dept_emp (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  dept_no VARCHAR (4) NOT NULL);
  PRIMARY KEY (emp_no)
  FOREIGN KEY (dept_no) REFERENCES dept_emp(emp_no)
  
DROP TABLE department;
CREATE TABLE department (
  dept_no VARCHAR (4) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(50) NOT NULL);
  FOREIGN KEY (dept_no) REFERENCES dept_emp(emp_no)

DROP TABLE dept_manager;
CREATE TABLE dept_manager (
  dept_no VARCHAR (4) NOT NULL,
  emp_no INTEGER PRIMARY KEY NOT NULL);  
  PRIMARY KEY (emp_no)
  FOREIGN KEY (dept_no) REFERENCES dept_emp(emp_no)

DROP TABLE salaries;
CREATE TABLE salaries (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  salary integer NOT NULL);
  PRIMARY KEY (emp_no)
	
DROP TABLE employees;
CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date date DEFAULT ('now'::text)::date NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  sex VARCHAR(1),
  hire_date date DEFAULT ('now'::text)::date NOT NULL);
  PRIMARY KEY (emp_no)
  FOREIGN KEY (emp_title_ID) REFERENCES employees(emp_no)
  
DROP TABLE titles;
CREATE TABLE titles (
  emp_title_ID VARCHAR(5) NOT NULL,
  title VARCHAR(50) NOT NULL);
  FOREIGN KEY (emp_title_ID) REFERENCES employees(emp_no)

SELECT * FROM department;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries; 
SELECT * FROM employees;
SELECT * FROM titles;


---------------------------------------------
-- In PGAdmin
DROP TABLE dept_emp;
CREATE TABLE dept_emp (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  dept_no VARCHAR (4) NOT NULL);
  
DROP TABLE department;
CREATE TABLE department (
  dept_no VARCHAR (4) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(50) NOT NULL);

DROP TABLE dept_manager;
CREATE TABLE dept_manager (
  dept_no VARCHAR (4) NOT NULL,
  emp_no INTEGER PRIMARY KEY NOT NULL);  

DROP TABLE salaries;
CREATE TABLE salaries (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  salary integer NOT NULL);
	
DROP TABLE employees;
CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date date DEFAULT ('now'::text)::date NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  sex VARCHAR(1),
  hire_date date DEFAULT ('now'::text)::date NOT NULL);
  
DROP TABLE titles;
CREATE TABLE titles (
  emp_title_ID VARCHAR(5) PRIMARY KEY NOT NULL,
  title VARCHAR(50) NOT NULL);

SELECT * FROM department;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries; 
SELECT * FROM employees;
SELECT * FROM titles;