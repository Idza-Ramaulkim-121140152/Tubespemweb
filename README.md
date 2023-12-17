# TUGAS BESAR UAS PEMWEB
# Biodata
Nama  : Idza Ramaulkim
NIM   : 121140152
Kelas : RB
# 2.	Membuat Table
# Penjelasan Mengenai Alur Website 
Website saya ini tidak menggunakan hosting, tetapi menggunakan VPS (Virtual Private Server) yang kemudian di konfigurasikan di Cloudflare menggunakan fitur Tunnles Domain, saya menggunakan Domain yang saya beli di NiagaHoster yang juga di konfigurasikan di panel NiagaHoster agar terhubung dengan Cloudflare. Disisi VPS Web saya menggunakan webserver disini saya menggunakan XAMPP sebagai webserver localhost.
Saya juga melampirkan ilustrasi untuk menjelaskan alur website saya (ilustrasi.jpg)

# Admin
Username : Idza_Ramaulkim
Password : 121140152

HARAP PERHATIKAN INI UNTUK LOGIN DAN EDIT DATA

# Instruksi Menggunakan
Berikut adalah kalimat instruksi penggunaan berdasarkan informasi yang diberikan:

1. Instal Xampp di komputer Anda.
2. Pastikan untuk menyimpan semua file terkait di dalam folder 'htdocs' pada instalasi Xampp.
3. Saya telah menyediakan file database dengan nama 'tubesweb' di dalam folder 'database/tubesweb.sql'. Import file ini ke dalam sistem database Mysql Anda.
4. Untuk membuat database dengan nama 'tubesweb', gunakan perintah SQL berikut: "CREATE DATABASE tubesweb". Alternatifnya lihat perintah dibawah.

# Website Impelemtasi
https://tubeswebidza.ramaulkimtech.site/

# Website Database PHPMYADMIN
https://tubeswebidza.ramaulkimtech.site/phpmyadmin/

# Langkah-langkah dalam membuat basis data dengan code SQL
## 1.	Membuat database
CREATE DATABASE webrizka;

## 2.	Membuat Table
CREATE TABLE `pariwisata` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `fasilitas` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_browser` varchar(200) NOT NULL,
  `alamat_ip` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


## 3. Menambahkan data menggunakan code SQL
INSERT INTO `pariwisata` (`id`, `nama`, `detail`, `alamat`, `jenis`, `fasilitas`, `rating`, `foto`, `jenis_browser`, `alamat_ip`) VALUES
(34, 'Pulau Weh', 'Tempat wisata yang terkenal di Pulau Sumatra yang pertama adalah Pulau Weh. Pulau Weh merupakan pulau yang terbentuk secara vulkanik. Meskipun letaknya di tepi laut, Aladiners masih dapat menemukan batu-batu khas vulkanik. Hal tersebut juga mempengaruhi kesuburan tanahnya.', 'Aceh', 'Wisata Alam', 'Tempat Parkir, Restoran', 3, 'img/SABANG_HASBI-AZHAR-3_800x530.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1');

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Idza_Ramaulkim', '121140152');

## 4.  Menampilkan data menggunakan SQL
SELECT * FROM `pariwisata`
SELECT * FROM `users`

## 5. Mengedit data dengan SQL
UPDATE `pariwisata` SET `alamat` = 'Banda Aceh' WHERE `pariwisata`.`id` = 34

## 6. Menghapus data dengan SQL
DELETE FROM pariwisata WHERE `pariwisata`.`id` = 34

