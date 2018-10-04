USE employees;
select emp_no,first_name,last_name,gender from employees where gender = 'M' and (
first_name =('irena')
or first_name=('vidya')
or first_name=('maya')
)
order by last_name desc,first_name desc;
-- where last name starts with a e
select last_name from employees
where last_name like 'E%'
order by emp_no desc;
-- hired from the 90's'
select first_name,last_name,hire_date
from employees where hire_date like '199%';
-- born on christmas
select * from employees
where birth_date like '%-12-25';
-- last name starts or ends with e
select * from employees
where last_name like '%E'
or last_name like '%e';
-- last name starts and ends with e
select * from employees
where last_name like '%E'
and last_name like '%e';
-- hired in the 90s and born on cday
select * from employees
where hire_date like '199%'
and birth_date like '%-12-25'
order by birth_date,hire_date desc;
-- find last name all q but not qu
select * from employees
where last_name like '%q%'
and last_name not like '%qu%';