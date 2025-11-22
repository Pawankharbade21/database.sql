SELECT e.emp_id, e.emp_name, d.dept_name
FROM employee e
JOIN department d ON e.dept_id = d.dept_id;

SELECT emp_name, salary 
FROM employee
ORDER BY salary DESC LIMIT 1;

SELECT emp_id, COUNT(*) AS total_days
FROM attendance
GROUP BY emp_id;

SELECT e.emp_name, p.rating
FROM employee e
JOIN performance p ON e.emp_id = p.emp_id
WHERE p.rating >= 4;
