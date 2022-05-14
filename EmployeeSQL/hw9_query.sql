-- Create a new table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

-- Create a new table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL
);

-- Create a new table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(30) NOT NULL
);

-- Create a new table
CREATE TABLE dept_manager (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL
	birth_date VARCHAR(30) NOT NULL
	first_name 
	last_name
	sex
	hire_date
);

-- Create a new table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);