-- String Functions

Select length('Faturrahman') as panjang_nama;

select upper('john price') as KAPITAL;

select lower('SIMON GHOST RILEY') as LOWER;

select first_name, length(first_name)
from employee_demographics
order by 2;

select first_name, upper(first_name)
from employee_demographics
order by 2;

-- TRIM

-- Left Trim
select LTRIM('              Cristiano        ') as correct;

-- Right Trim
select RTRIM('              Cristiano        ') as correct_right;


-- SUBSTRING
select first_name, birth_date,
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
substring(birth_date,6,2) as Birth_Month
from employee_demographics;


-- REPLACE AND LOCATE

select first_name, Replace (first_name, 'a', 'z')
from employee_demographics;

select locate('n', 'faturrahman');

select first_name, LOCATE ('An', first_name)
from employee_demographics;

select first_name, last_name,
concat(first_name, ' ', last_name) as full_name
from employee_demographics;
