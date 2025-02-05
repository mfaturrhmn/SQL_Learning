-- Case Statements

select first_name,
last_name,
age,
Case
	when age <= 30 then 'Young'
    when age between 31 and 50 THEN 'Old'
    when age >= 50 then "On Death's Door"
END As Age_Category
from employee_demographics;



-- PAY INCREASE and BONUS
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

select first_name, last_name, occupation, salary,
Case
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
END As New_Salary,
Case
	when dept_id = 6 then salary * .10
END As Bonus
from employee_salary; 

