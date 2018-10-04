USE employees;
select distinct last_name from employees
order by last_name desc
limit 10;
select * from employees
where birth_date like '%-12-25' and hire_date
like '199%'
order by birth_date, hire_date desc limit 5;
select * from employees
where birth_date like '%-12-25' and hire_date like '199%'
order by birth_date,hire_date desc limit 5 offset 45;

SELECT * FROM employees
WHERE hire_date Like '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 25 OFFSET 50;