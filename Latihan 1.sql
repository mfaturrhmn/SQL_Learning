/*
1. SELECT
Tampilkan semua kolom dari tabel employees untuk karyawan dengan gaji lebih dari 6000.

2. WHERE Clause
Cari semua karyawan dari tabel employees yang bekerja di departemen "Finance" dan memiliki gaji kurang dari 8000.

3. GROUP BY + ORDER BY
Dari tabel employees, kelompokkan data berdasarkan kolom department, lalu hitung rata-rata gaji setiap departemen. Urutkan hasil berdasarkan rata-rata gaji secara menurun.

4. HAVING & WHERE
Hitung jumlah karyawan untuk setiap departemen, tetapi hanya tampilkan departemen yang memiliki lebih dari 1 karyawan.

5. LIMIT & Aliasing
Dari tabel employees, pilih nama depan, nama belakang, dan gaji karyawan dengan alias Employee_Salary. Batasi hasil hanya pada 3 karyawan dengan gaji tertinggi.

6. Joins
Gabungkan tabel employees dan departments untuk menampilkan nama depan karyawan, nama departemen, dan lokasi departemen.

7. UNIONS
Buat query untuk menggabungkan daftar semua lokasi departemen dari tabel departments dengan nama depan semua karyawan dari tabel employees. Hasilkan daftar unik.

8. String Functions
Tampilkan nama depan dan nama belakang dari tabel employees dalam format berikut:

Huruf depan nama depan dalam huruf besar.
Nama belakang seluruhnya dalam huruf kecil.
Contoh: "John DOE" menjadi "J DOE".

9. CASE Statements
Tambahkan kolom baru dalam query Anda bernama Salary_Level. Kategorikan gaji karyawan berdasarkan ketentuan berikut:

"High" jika gaji >= 7000.
"Medium" jika gaji >= 5000 dan < 7000.
"Low" jika gaji < 5000.


10. Subqueries
Dari tabel employees, cari nama depan karyawan yang memiliki gaji lebih besar daripada rata-rata gaji seluruh karyawan.

11. Window Functions
Hitung total gaji kumulatif (Cumulative_Salary) dari tabel employees, diurutkan berdasarkan gaji.

*/
-- Buat database baru
CREATE DATABASE company_db;

-- Gunakan database yang baru dibuat
USE company_db;

-- Buat tabel employees
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Masukkan data ke tabel employees
INSERT INTO employees (first_name, last_name, department, salary) VALUES
('John', 'Doe', 'Finance', 6000),
('Jane', 'Smith', 'Marketing', 7000),
('Michael', 'Johnson', 'IT', 7500),
('Sarah', 'Williams', 'Finance', 8000),
('Chris', 'Brown', 'IT', 5000);

-- Buat tabel departments
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Masukkan data ke tabel departments
INSERT INTO departments (department_name, location) VALUES
('Finance', 'New York'),
('Marketing', 'Los Angeles'),
('IT', 'San Francisco');