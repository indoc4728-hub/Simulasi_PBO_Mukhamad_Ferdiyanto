-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2026 at 03:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_trpl1a_ferdi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(100) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Andi Saputra', 'SMAN 1 Surabaya', '85.50', '300000.00', 'Reguler', 'Teknik Informatika', 'Kampus A', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMAN 2 Surabaya', '82.00', '300000.00', 'Reguler', 'Sistem Informasi', 'Kampus B', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'SMKN 1 Malang', '88.25', '300000.00', 'Reguler', 'Teknik Informatika', 'Kampus A', NULL, NULL, NULL, NULL),
(4, 'Dewi Anggraini', 'SMAN 5 Kediri', '80.75', '300000.00', 'Reguler', 'Manajemen', 'Kampus C', NULL, NULL, NULL, NULL),
(5, 'Eko Prasetyo', 'SMKN 2 Mojokerto', '79.50', '300000.00', 'Reguler', 'Akuntansi', 'Kampus B', NULL, NULL, NULL, NULL),
(6, 'Fajar Ramadhan', 'SMAN 3 Lamongan', '84.60', '300000.00', 'Reguler', 'Teknik Industri', 'Kampus A', NULL, NULL, NULL, NULL),
(7, 'Gita Permata', 'SMAN 1 Tuban', '87.90', '300000.00', 'Reguler', 'Teknik Sipil', 'Kampus C', NULL, NULL, NULL, NULL),
(8, 'Hana Putri', 'SMAN 1 Gresik', '92.50', '300000.00', 'Prestasi', NULL, NULL, 'Akademik', 'Nasional', NULL, NULL),
(9, 'Indra Kurniawan', 'SMKN 1 Sidoarjo', '90.00', '300000.00', 'Prestasi', NULL, NULL, 'Olahraga', 'Provinsi', NULL, NULL),
(10, 'Joko Susilo', 'SMAN 4 Madiun', '91.20', '300000.00', 'Prestasi', NULL, NULL, 'Seni', 'Nasional', NULL, NULL),
(11, 'Kartika Dewi', 'SMAN 2 Jombang', '94.10', '300000.00', 'Prestasi', NULL, NULL, 'Akademik', 'Kabupaten', NULL, NULL),
(12, 'Lukman Hakim', 'SMKN 3 Kediri', '89.75', '300000.00', 'Prestasi', NULL, NULL, 'Olahraga', 'Nasional', NULL, NULL),
(13, 'Maya Sari', 'SMAN 1 Blitar', '93.40', '300000.00', 'Prestasi', NULL, NULL, 'Sains', 'Provinsi', NULL, NULL),
(14, 'Nanda Pratama', 'SMKN 1 Bojonegoro', '90.80', '300000.00', 'Prestasi', NULL, NULL, 'Akademik', 'Nasional', NULL, NULL),
(15, 'Oki Saputra', 'SMAN 2 Pasuruan', '86.30', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD001', 'Kementerian Perhubungan'),
(16, 'Putri Ayu', 'SMAN 1 Probolinggo', '88.00', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD002', 'Kementerian Keuangan'),
(17, 'Rizki Maulana', 'SMKN 2 Banyuwangi', '87.50', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD003', 'Pemerintah Provinsi Jawa Timur'),
(18, 'Salsa Nabila', 'SMAN 3 Tulungagung', '90.25', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD004', 'Kementerian Dalam Negeri'),
(19, 'Teguh Prakoso', 'SMKN 1 Jember', '85.80', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD005', 'Kementerian Pertanian'),
(20, 'Vina Maharani', 'SMAN 1 Ponorogo', '91.60', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD006', 'Badan Kepegawaian Negara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
