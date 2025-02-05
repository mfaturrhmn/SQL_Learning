-- WINDOW FUNCTIONS


select gender, AVG(salary) as avg_salary 
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;


select dem.first_name, dem.last_name, gender,  AVG(salary) as avg_salary 
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by dem.first_name, dem.last_name, gender;


select dem.first_name, dem.last_name, gender, gender,
sum(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;


select dem.first_name, dem.last_name, gender, gender,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;


select dem.employee_id,dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;


