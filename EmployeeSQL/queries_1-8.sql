-- 1. List the following details of each employee: employee number, last name, 
-- first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s on 
s.emp_no=e.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date > '1986-1-1' AND hire_date < '1987-1-1'

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm 
JOIN departments AS d ON 
d.dept_no=dm.dept_no
JOIN employees AS e ON
e.emp_no=dm.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de 
JOIN employees AS e ON
e.emp_no=de.emp_no
JOIN departments as d ON 
d.dept_no=de.dept_no

-- 5. List first name, last name, and sex for employees whose first name
-- is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND left(last_name, 1) = 'B'

-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d
WHERE d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) 
-- in descending order.
SELECT e.last_name, COUNT(e.last_name) AS "employee count"
FROM employees AS e
GROUP BY e.last_name
ORDER BY "employee count" DESC;