/*
1. SELECT
Tampilkan semua data dari tabel students.
*/
Select * from students;
-- --------------------------------------------
/*
2. WHERE Clause
Cari siswa yang berusia lebih dari 14 tahun dan berada di kelas dengan grade 'B'.
*/
 select * from students
 where age > 14;
-- --------------------------------------------
/*
3. GROUP BY + ORDER BY
Hitung jumlah siswa dalam setiap kelas (class_id), lalu urutkan dari jumlah siswa terbanyak ke paling sedikit.
*/
select * from students;

SELECT class_id, COUNT(class_id) AS JumlahSiswa  
FROM students  
GROUP BY class_id  
ORDER BY JumlahSiswa DESC;
-- --------------------------------------------
/*
4. HAVING & WHERE
Hitung jumlah siswa dalam setiap kelas, tetapi hanya tampilkan kelas yang memiliki lebih dari 1 siswa.
*/
select * from students;

Select class_id, count(class_id) as Total_Siswa_PerKelas
from students
group by class_id
having count(class_id) > 1
;
-- --------------------------------------------
/*
5. LIMIT & Aliasing
Tampilkan 3 siswa tertua, dan beri alias pada kolom age menjadi "Usia_Siswa".
*/
select * from students;

select student_id, first_name, last_name, Age as Student_Age
from students
order by age desc
limit 3;
-- --------------------------------------------
/*
6. Joins
Gabungkan tabel students dan classes untuk menampilkan nama depan siswa, nama kelas, dan nama guru yang mengajar kelas tersebut.
*/
select * from students;
select * from classes;

SELECT students.class_id, students.first_name, classes.class_name, classes.teacher
FROM students
JOIN 
classes
	ON students.class_id = classes.class_id;
    

SELECT stud.class_id, stud.first_name, class.class_name, class.teacher
FROM students stud
JOIN 
classes class
	ON stud.class_id = class.class_id;
    
-- --------------------------------------------
/*
7. Unions
Tampilkan daftar unik dari semua nama kelas dari tabel classes serta daftar unik dari nama depan siswa dari tabel students.
*/
select * from students;
select * from classes;


select class_name as Nama_Kelas
from classes
union 
select first_name as Nama_Siswa
from students;
-- --------------------------------------------
/*
8. String Functions
Tampilkan nama depan dan nama belakang dari tabel students dalam format berikut:

Huruf pertama dari first_name dalam huruf besar.

last_name dalam huruf kecil.

Contoh: "Alice JOHNSON" menjadi "A johnson".
*/
select * from students;

select concat(substring(first_name,1,1), ' ' ,lower(last_name)) as Full_Name
from students;

-- --------------------------------------------
/*
9. CASE Statements
Tambahkan kolom baru dalam query bernama Age_Group, yang mengkategorikan umur siswa sebagai berikut:

"Teen" jika usia >= 14.
"Young Teen" jika usia < 14.
*/
select * from students;

select 
student_id, 
Concat(first_name, ' ', last_name) AS full_name, 
age,
case
	when age >= 14 then 'Teen'
    when age < 14 then 'Young Teen'
End as Age_Group
from students;
-- --------------------------------------------
/*
10. Subqueries
Cari nama depan siswa yang memiliki usia lebih besar daripada rata-rata usia semua siswa.
*/
select * from students;


-- --------------------------------------------
/*
11. Window Functions
Hitung total usia kumulatif (Cumulative_Age) dari tabel students, diurutkan berdasarkan usia.
*/
select * from students;

-- --------------------------------------------

