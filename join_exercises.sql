USE employees;

-- # Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager manager ON d.dept_no = manager.dept_no
JOIN employees e ON manager.emp_no = e.emp_no
WHERE manager.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;

-- # Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager manager ON d.dept_no = manager.dept_no
JOIN employees e ON manager.emp_no = e.emp_no
WHERE manager.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name ASC;

-- # Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Titles', COUNT(*) AS 'Count'
FROM titles t
JOIN dept_emp d ON t.emp_no = d.emp_no
WHERE d.dept_no = 'd009' AND t.to_date = '9999-01-01' AND d.to_date = '9999-01-01'
GROUP BY t.title;

-- # Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments d
JOIN dept_manager manager ON d.dept_no = manager.dept_no
JOIN employees e ON manager.emp_no = e.emp_no
RIGHT JOIN salaries s ON e.emp_no = s.emp_no
WHERE manager.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;