-- SUBQUERIES

select * 
from employee_demographics;

select * 
from employee_salary;

select * 
from parks_departments;


select employee_id,first_name,last_name
from employee_demographics
where employee_id in
					(select employee_id
							from employee_salary
                            where dept_id = 1)
;


select first_name, salary, 
(
Select AVG(salary)
from employee_salary
)
from employee_salary;



select gender, 
avg(age), 
max(age), min(age), count(age)
from employee_demographics
group by gender;

select avg(min_AGE)
from
(select gender,
avg(age) as avg_AGE, 
max(age) as max_AGE,
min(age) as min_AGE, 
count(age)
from employee_demographics
group by gender) as Agg_table;

