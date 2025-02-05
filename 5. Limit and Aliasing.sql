-- LIMIT and ALIASING

-- LIMIT
select * from employee_demographics
order by age desc 
limit 3
;

select * from employee_demographics
order by age desc 
limit 1,2
;


-- ALIASING
select gender, avg(age) rata_rata_umur
from employee_demographics
group by gender
having avg(age) > 40
;
