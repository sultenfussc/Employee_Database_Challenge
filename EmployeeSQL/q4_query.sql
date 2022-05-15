-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de 
JOIN employees AS e ON
e.emp_no=de.emp_no
JOIN departments as d ON 
d.dept_no=de.dept_no
