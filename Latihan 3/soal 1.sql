USE [Pertemuan 5]

CREATE TABLE Dosen_Wali (
	id INT PRIMARY KEY
	NIP INT,
	nama VARCHAR (255),
	tanggal_lahir DATE,
	alamat VARCHAR (255),
	no_hp INT
)

CREATE TABLE Mahasiswa (
	id INT PRIMARY KEY,
	NPM INT,
	Nama VARCHAR (255),
	tanggal_lahir DATE,
	alamat VARCHAR (255),
	no_hp INT,
	jurusan_id INT,
	dosen_wali_id INT
)