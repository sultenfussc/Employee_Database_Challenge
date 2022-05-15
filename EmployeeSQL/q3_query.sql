-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm 
JOIN departments AS d ON 
d.dept_no=dm.dept_no
JOIN employees AS e ON
e.emp_no=dm.emp_no;