-- Create a new table departments
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

-- Create a new table dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL
);

-- Create a new table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL
);

-- Create a new table employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL
	birth_date VARCHAR(30) NOT NULL
	first_name VARCHAR(30) NOT NULL
	last_name VARCHAR(30) NOT NULL
	sex VARCHAR(30) NOT NULL
	hire_date DATE NOT NULL
);

-- Create a new table salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

-- Create a new table titles
CREATE TABLE titles (
	title_id INT NOT NULL,
	title INT NOT NULL
);

SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM salaries
SELECT * FROM employees
SELECT * FROM titles