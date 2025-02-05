-- JOINS

select * from employee_demographics;
select * from employee_salary;

-- INNER JOIN

/*

Inner Join di SQL adalah tipe join yang digunakan untuk mengambil data dari dua atau lebih tabel berdasarkan kondisi kecocokan di kolom tertentu. 
Hanya baris yang memiliki nilai matching di kedua tabel yang akan dimasukkan dalam hasil query.

*/

select dem.employee_id, age, occupation
from employee_demographics dem
inner join employee_salary sal
	on dem.employee_id = sal.employee_id
;


-- OUTER JOINS

/*

digunakan untuk menggabungkan data dari dua atau lebih tabel dan menyertakan semua baris dari salah satu atau kedua tabel, meskipun tidak ada kecocokan di tabel lain. 
Outer Joins memungkinkan Anda mendapatkan data yang tidak lengkap atau yang tidak cocok antara tabel.

*/

-- Left Joins
/*

Mengembalikan semua baris dari tabel kiri (table1), dan data dari tabel kanan (table2) yang cocok.
Jika tidak ada kecocokan, kolom dari tabel kanan akan diisi dengan NULL

*/

select *
from employee_demographics dem
left outer join employee_salary sal
	on dem.employee_id = sal.employee_id
;

select *
from employee_salary sal
right outer join employee_demographics dem
	on sal.employee_id = dem.employee_id
;


-- Right Joins

/*

Mengembalikan semua baris dari tabel kanan (table2), dan data dari tabel kiri (table1) yang cocok.
Jika tidak ada kecocokan, kolom dari tabel kiri akan diisi dengan NULL.

*/

select *
from employee_demographics dem
right outer join employee_salary sal
	on dem.employee_id = sal.employee_id
;

select *
from employee_salary sal
right outer join employee_demographics dem
	on sal.employee_id = dem.employee_id
;

-- SELF JOINS

/*

Self Join adalah jenis join di SQL di mana sebuah tabel digabungkan dengan dirinya sendiri. 
Self Join sering digunakan untuk membandingkan baris di dalam tabel yang sama atau untuk menemukan hubungan hierarkis seperti struktur organisasi atau relasi keluarga.

Konsep Self Join
(-) Sebuah tabel "dianggap" sebagai dua tabel berbeda menggunakan alias.
(-) Digunakan ketika kita perlu membandingkan satu baris dengan baris lainnya dalam tabel yang sama.

*/



select emp1.employee_id as emp_santa,
emp1.first_name as emp_santa,
emp1.last_name as emp_santa,
emp2.employee_id as emp_receiver,
emp2.first_name as FirstName_emp_receiver,
emp2.last_name as LastName_emp_receiver
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id
;

-- JOINING MULTIPLE TABLES TOGETHER

select *
from employee_demographics dem
inner join employee_salary sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id
;

select *
from parks_departments;