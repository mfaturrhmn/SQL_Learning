select * 
from departments;

select * 
from employees;

 -- 1. SELECT: Tampilkan semua kolom dari tabel employees untuk karyawan dengan gaji lebih dari 6000.
 select *
 from employees
 where salary > 6000;
 
 -- 2. WHERE Clause: Cari semua karyawan dari tabel employees yang bekerja di departemen "Finance" dan memiliki gaji kurang dari 8000.
select *
from employees
where  department = 'Finance' AND salary < 8000;

-- 3. GROUP BY + ORDER BY: Dari tabel employees, kelompokkan data berdasarkan kolom department, lalu hitung rata-rata gaji setiap departemen. Urutkan hasil berdasarkan rata-rata gaji secara menurun.
select department, avg(salary) as rata_rata_gaji
from employees
group by (department)
order by avg(salary);

-- 4. HAVING & WHERE: Hitung jumlah karyawan untuk setiap departemen, tetapi hanya tampilkan departemen yang memiliki lebih dari 1 karyawan.
select department, count(*) as Total_Employees
from employees
group by department
having count(*) > 1;

-- 5. LIMIT & Aliasing: Dari tabel employees, pilih nama depan, nama belakang, dan gaji karyawan dengan alias Employee_Salary. Batasi hasil hanya pada 3 karyawan dengan gaji tertinggi.
select first_name, last_name, salary as Employee_Salary
from employees
limit 3;

-- 6. Joins: Gabungkan tabel employees dan departments untuk menampilkan nama depan karyawan, nama departemen, dan lokasi departemen.
SELECT 
    employees.first_name AS employee_name,
    departments.department_name,
    departments.location
FROM 
    employees
JOIN 
    departments
ON 
    employees.department = departments.department_name;
;

-- 7. UNIONS: Buat query untuk menggabungkan daftar semua lokasi departemen dari tabel departments dengan nama depan semua karyawan dari tabel employees. Hasilkan daftar unik.
select location
from departments
union 
select first_name
from employees;

/* 
8. String Functions
Tampilkan nama depan dan nama belakang dari tabel employees dalam format berikut:

Huruf depan nama depan dalam huruf besar.
Nama belakang seluruhnya dalam huruf kecil.
Contoh: "John DOE" menjadi "J DOE".
*/
Select * from employees;

Select * from departments;

select 
	Concat(
		UPPER(SUBSTRING(first_name, 1, 1)), 
        ' ', 
        Lower(last_name)) as full_name
from employees;

/*
9. CASE Statements
Tambahkan kolom baru dalam query Anda bernama Salary_Level. Kategorikan gaji karyawan berdasarkan ketentuan berikut:

"High" jika gaji >= 7000.
"Medium" jika gaji >= 5000 dan < 7000.
"Low" jika gaji < 5000.
*/
Select * from employees;

Select * from departments;
-- ------------------------------------------
select 
employee_id, 
CONCAT(first_name, ' ', last_name) AS full_name,
department,
salary,
case
		when salary  >= 7000 then 'High'
		when salary  >= 5000 and salary < 7000 then 'Medium'
		when salary  < 5000 then 'Low'
END as Salary_Level
from employees;

/*
10. Subqueries
Dari tabel employees, cari nama depan karyawan yang memiliki gaji lebih besar daripada rata-rata gaji seluruh karyawan.
*/
Select * from employees;

Select * from departments;
-- ------------------------------------------

SELECT 
    first_name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);




/*
11. Window Functions
Hitung total gaji kumulatif (Cumulative_Salary) dari tabel employees, diurutkan berdasarkan gaji.
*/
Select * from employees;

Select * from departments;
-- ------------------------------------------
SELECT 
    first_name,
    last_name,
    salary,
    SUM(salary) OVER (ORDER BY salary) AS Cumulative_Salary
FROM employees;






