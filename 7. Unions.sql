-- UNIONS

/*
Union dalam SQL adalah operator yang digunakan untuk menggabungkan hasil dari dua atau lebih query SELECT menjadi satu set hasil. 
Union menghilangkan duplikat secara default, sedangkan jika ingin menyertakan semua hasil (termasuk duplikat), gunakan UNION ALL.

Konsep Utama Union
1.Menggabungkan Hasil Query:
	(-) Data dari query pertama digabungkan dengan data dari query kedua, dan seterusnya.
    
2. Kolom yang Digabungkan Harus Kompatibel:
	(-) Jumlah kolom di setiap query harus sama.
	(-) Tipe data pada kolom yang bersesuaian harus serupa atau dapat dikonversi.
    
3. Urutan Data:
	(-) Urutan data ditentukan oleh query pertama, kecuali jika Anda menggunakan ORDER BY setelah UNION.

*/

select first_name, last_name
from employee_demographics
union
select first_name, last_name
from employee_salary;


select first_name, last_name, 'OLD Lady' as Label
from employee_demographics
where age > 40 and gender = 'female'
union
select first_name, last_name, 'OLD Man' as Label
from employee_demographics
where age > 40 and gender = 'male'
union
select first_name, last_name, 'Highly Paid Employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name
;
