-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2023 pada 06.48
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubesweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pariwisata`
--

CREATE TABLE `pariwisata` (
  `id` int(11) NOT NULL,
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

--
-- Dumping data untuk tabel `pariwisata`
--

INSERT INTO `pariwisata` (`id`, `nama`, `detail`, `alamat`, `jenis`, `fasilitas`, `rating`, `foto`, `jenis_browser`, `alamat_ip`) VALUES
(34, 'Pulau Weh', 'Tempat wisata yang terkenal di Pulau Sumatra yang pertama adalah Pulau Weh. Pulau Weh merupakan pulau yang terbentuk secara vulkanik. Meskipun letaknya di tepi laut, Aladiners masih dapat menemukan batu-batu khas vulkanik. Hal tersebut juga mempengaruhi kesuburan tanahnya.', 'Aceh', 'Wisata Alam', 'Tempat Parkir, Restoran', 3, 'img/SABANG_HASBI-AZHAR-3_800x530.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(35, 'Danau Toba', ' Danau Toba. Danau ini merupakan danau terbesar di Indonesia juga Asia Tenggara. Tidak hanya itu, Danau Toba juga merupakan danau terbesar kedua di dunia.', 'Sumatra Utara', 'Wisata Alam', ' ', 3, 'img/sfidnfits-keistimewaan-danau-toba1.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(36, 'Air Terjun Sigerincing', 'Air Terjun Segerincing terletak di Desa Tuo, Kecamatan Lembah Masurai, Kabupaten Merangin, Jambi. Lokasinya berjarak sekitar 75 kilometer dari Kota Bangko, dan bisa dicapai dengan melakukan perjalan selama kurang lebih 2 jam. Air Terjun Segerincing ini berketinggian mencapai 70 meter serta lebar pancuran 6 meter.', 'Jambi', 'Wisata Alam', 'Tempat Parkir', 3, 'img/Air Terjun Segerincing1.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(37, 'Danau Ranau', 'Danau Ranau merupakan terbesar nomor dua di daerah Sumatra setelah Danau Toba. Tempat wisata yang cukup terkenal di Pulau Sumatra tepatnya di Sumatra Selatan memiliki luas yang dimilikinya sekitar 125,9 kilometer persegi. Sedangkan untuk kedalamannya yaitu mencapai 229 meter, dengan ketinggian permukaan sekitar 540 meter.', 'Sumatra Selatan dan Lampung', 'Wisata Alam', 'Tempat Parkir', 3, 'img/62a0972858cb1.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(38, 'Bukit Kaba', 'Bukit Kaba ini terletak di Desa Sumber Urip Kecamatan Selupuh Rejang Kabupaten Rejang Lebong, Bengkulu. Bukit Kaba sebenarnya adalah sebuah gunung dengan ketinggian mencapai 1937 Mdpl yang termasuk dalam Taman Wisata Alam dengan luas wilayahnya sekitar 13.940 Ha.', 'Bengkulu', 'Wisata Alam', 'Tempat Parkir', 3, 'img/1567906905.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(39, 'Restoran Bakso Son Haji Sony', 'Bagi warga Lampung, Bakso Son Haji Sony atau Bakso Sony ini sudah sangat terkenal dengan kelezatannya sejak tahun 1996. Hal yang membuat bakso ini begitu istimewa terletak pada rasa bakso dan kuahnya.', 'Lampung', 'Wisata Kuliner', 'WiFi, Tempat Parkir, Restoran', 3, 'img/Haji-Soni-2-Copyright-restaurantguru.com_-800x450.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(40, 'Situs Batu Bedil', 'Situs Batu Bedil merupakan peninggalan purbakala di Dusun Batu Bedil, Desa Gunung Meraksa, Kecamatan Pulau Panggung, Kabupaten Tanggamus. Menurut sejarahnya, situs ini dinamai Batu Bedil karena warga setempat sering mendengar suara menyerupai senapan (bedil) dari satu menhir Batu Tegak tersebut. Menhir Batu Bedil memiliki ukuran lebar kurang lebih 109 cm, sedangkan tingginya mencapai sekitar 220 cm. Situs Batu Bedil diperkirakan berdiri sekitar akhir abad 9 atau awal abad 10.', 'Lampung', 'Wisata Sejarah', 'Tempat Parkir, Restoran', 3, 'img/batu-bedil-tanggamus.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Idza_Ramaulkim', '121140152');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pariwisata`
--
ALTER TABLE `pariwisata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pariwisata`
--
ALTER TABLE `pariwisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
