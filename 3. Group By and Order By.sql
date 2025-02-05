-- GROUP BY

select gender, avg(age) , MAX(age), min(age), count(age)
from employee_demographics
group by gender
;


select occupation, avg(salary)
from employee_salary
group by occupation, salary
;


-- ORDER BY
select *
from employee_demographics
order by first_name
;

select *
from employee_demographics
order by gender, age desc
;
