-- WHERE CLAUSE

Select * 
from employee_demographics
where birth_date > '1985-01-01'
;

-- AND OR NOT -- LOGICAL OPERATORS

-- AND
Select * 
from employee_demographics
where birth_date > '1985-01-01'
AND gender = 'Male'
;

Select * 
from employee_demographics
where (first_name = 'leslie' AND age = 44) or Age > 55
;

-- OR
Select * 
from employee_demographics
where birth_date > '1985-01-01'
OR gender = 'Male'
;

Select * 
from employee_demographics
where birth_date > '1985-01-01'
OR NOT gender = 'Male'
;


-- LIKE STATEMENT %,_
Select * 
from employee_demographics
where first_name LIKE '%er%'
;

Select * 
from employee_demographics
where first_name LIKE 'a___%'
;

Select * 
from employee_demographics
where birth_date LIKE '1989%'
;

/* 
1. (%) Digunakan untuk 
Fungsi: Menyamakan dengan 0 atau lebih karakter apa pun.
Gunakan: Ketika Anda ingin mencocokkan string dengan bagian tertentu tanpa peduli apa yang ada sebelum atau sesudahnya.

2. (_) Digunakan untuk
Fungsi: Menyamakan dengan tepat satu karakter apa pun.
Gunakan: Ketika Anda ingin mencocokkan string dengan panjang tertentu dan pola tertentu.
 */