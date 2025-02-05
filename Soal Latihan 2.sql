/*

1. SELECT
Tampilkan semua data dari tabel students.

2. WHERE Clause
Cari siswa yang berusia lebih dari 14 tahun dan berada di kelas dengan grade 'B'.

3. GROUP BY + ORDER BY
Hitung jumlah siswa dalam setiap kelas (class_id), lalu urutkan dari jumlah siswa terbanyak ke paling sedikit.

4. HAVING & WHERE
Hitung jumlah siswa dalam setiap kelas, tetapi hanya tampilkan kelas yang memiliki lebih dari 1 siswa.

5. LIMIT & Aliasing
Tampilkan 3 siswa tertua, dan beri alias pada kolom age menjadi "Usia_Siswa".

6. Joins
Gabungkan tabel students dan classes untuk menampilkan nama depan siswa, nama kelas, dan nama guru yang mengajar kelas tersebut.

7. Unions
Tampilkan daftar unik dari semua nama kelas dari tabel classes serta daftar unik dari nama depan siswa dari tabel students.

8. String Functions
Tampilkan nama depan dan nama belakang dari tabel students dalam format berikut:

Huruf pertama dari first_name dalam huruf besar.

last_name dalam huruf kecil.

Contoh: "Alice JOHNSON" menjadi "A johnson".

9. CASE Statements
Tambahkan kolom baru dalam query bernama Age_Group, yang mengkategorikan umur siswa sebagai berikut:

"Teen" jika usia >= 14.
"Young Teen" jika usia < 14.
10. Subqueries
Cari nama depan siswa yang memiliki usia lebih besar daripada rata-rata usia semua siswa.

11. Window Functions
Hitung total usia kumulatif (Cumulative_Age) dari tabel students, diurutkan berdasarkan usia.

*/

CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(10),
    class_id INT
);

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50),
    teacher VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, class_id) VALUES
('Alice', 'Johnson', 14, 'A', 1),
('Bob', 'Smith', 15, 'B', 2),
('Charlie', 'Brown', 14, 'A', 1),
('David', 'Williams', 16, 'C', 3),
('Eva', 'Davis', 15, 'B', 2);

INSERT INTO classes (class_name, teacher) VALUES
('Mathematics', 'Mr. Anderson'),
('Science', 'Ms. Roberts'),
('History', 'Mr. Thompson');

