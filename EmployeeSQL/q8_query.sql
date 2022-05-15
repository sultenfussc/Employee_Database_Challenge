-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) 
-- in descending order.
SELECT e.last_name, COUNT(e.last_name) AS "employee count"
FROM employees AS e
GROUP BY e.last_name
ORDER BY "employee count" DESC;