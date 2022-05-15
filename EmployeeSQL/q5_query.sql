-- 5. List first name, last name, and sex for employees whose first name
-- is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND left(last_name, 1) = 'B'
