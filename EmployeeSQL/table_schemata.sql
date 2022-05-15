-- * Create a table schema for each of the six CSV files. 
-- * Specify data types, primary keys, foreign keys, and other constraints.
-- * For the primary keys, verify that the column is unique. 
-- * Create tables in the correct order to handle foreign keys.
-- * Import each CSV file into the corresponding SQL table.

-- Drop table if exists
DROP TABLE departments;

-- Create a new table departments
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL ,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);

-- Drop table if exists
DROP TABLE dept_emp;

-- Create a new table dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no, dept_no)
);

-- Drop table if exists
DROP TABLE dept_manager;

-- Create a new table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(dept_no, emp_no)
);

-- Drop table if exists
DROP TABLE employees;

-- Create a new table employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no, emp_title_id)
 );

-- Drop table if exists
DROP TABLE salaries;

-- Create a new table salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Drop table if exists
DROP TABLE titles;

-- Create a new table titles
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);


-- Import data from departments.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM departments

-- Import data from dept_emp.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM dept_emp

-- Import data from dept_manager.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM dept_manager

-- Import data from employees.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM employees

-- Import data from salaries.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM salaries

-- Import data from titles.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM titles