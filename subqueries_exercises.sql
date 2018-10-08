USE employees;

-- # Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE hire_date = '1990-10-22'
);

-- # Find all the titles held by all employees with the first name Aamod.
SELECT DISTINCT title as Title
FROM titles
WHERE emp_no IN (
  SELECT emp_no FROM employees
  WHERE first_name = 'Aamod'
);

-- # Find all the current department managers that are female.
SELECT CONCAT(first_name, ' ', last_name) AS Name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date = '9999-01-01'
    AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
  )
);

