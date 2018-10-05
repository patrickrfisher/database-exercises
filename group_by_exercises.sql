USE employees;
-- find distinct titles
select  distinct title from titles;
-- last  name starts and ends with e find the unique last names using group by
Select distinct last_name from employees
where last_name like 'E%' and last_name like '%e'
group by last_name;
-- update previous with unique combos of first and last name where last starts and end with e
select distinct last_name,first_name from employees
where last_name like 'E%' and last_name like '%e'
group by last_name,first_name;
-- find unique last name with a q but not qu
select distinct last_name from employees
where last_name like '%q%'
and last_name not like '%qu%';
-- add a count to results and order by to find employees who unusual name is shared with others
select distinct last_name, count(last_name) from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;
-- update query for irena,vidya,maya to use count and group by each gender with those names
select count(*),gender
from employees
where first_name=('Irena')
or first_name=('vidya')
or first_name=('maya')
group by gender;