-- Having vs Where

Select gender, Avg(age)
from employee_demographics
group by gender
having avg(age) > 43
;

Select occupation, Avg(salary)
from employee_salary
where occupation LIKE '%manager%'
group by occupation
having avg(salary) > 75000
;

/*

WHERE:	
Menyaring data sebelum pengelompokan.
Tidak dapat menggunakan fungsi agregasi.
Berlaku pada data mentah.

HAVING: 
Menyaring data setelah pengelompokan.
Dapat menggunakan fungsi agregasi.
Berlaku pada hasil kelompok.

*/