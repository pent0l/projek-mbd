-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 05:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_mbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_ekskul`
--

CREATE TABLE `detail_ekskul` (
  `id_detail_ekskul` int(11) NOT NULL,
  `id_ekskul` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_ekskul`
--

INSERT INTO `detail_ekskul` (`id_detail_ekskul`, `id_ekskul`, `id_santri`) VALUES
(2, 1, 7),
(3, 1, 8),
(4, 2, 7),
(5, 2, 8),
(6, 2, 9),
(7, 2, 10),
(8, 2, 11),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(22, 12, 9),
(23, 12, 10),
(24, 12, 11),
(25, 12, 13),
(26, 11, 7),
(27, 11, 8),
(28, 11, 9),
(29, 11, 10),
(30, 11, 11),
(31, 11, 12),
(32, 11, 13),
(33, 13, 14),
(34, 13, 7),
(35, 13, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ekskul`
--

CREATE TABLE `ekskul` (
  `id_ekskul` int(11) NOT NULL,
  `id_jns_ekskul` int(11) NOT NULL,
  `id_pengasuh` int(11) NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ekskul`
--

INSERT INTO `ekskul` (`id_ekskul`, `id_jns_ekskul`, `id_pengasuh`, `jadwal`, `keterangan`) VALUES
(1, 2, 1, 'jumat', 'jam 4 sore'),
(2, 3, 4, 'Rabu', ' jam 4 sore'),
(3, 5, 5, 'Senin', ' jam 4 sore'),
(11, 4, 8, 'jumat', 'jam 4 sore'),
(12, 8, 11, 'Rabu', ' jam 4 sore'),
(13, 9, 12, 'kamis', 'jam 2 siang');

-- --------------------------------------------------------

--
-- Table structure for table `jns_ekskul`
--

CREATE TABLE `jns_ekskul` (
  `id_jns_ekskul` int(11) NOT NULL,
  `nama_ekskul` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jns_ekskul`
--

INSERT INTO `jns_ekskul` (`id_jns_ekskul`, `nama_ekskul`, `status`) VALUES
(2, 'Panahan', 0),
(3, 'English Camp', 0),
(4, 'Tahfiz Camp', 0),
(5, 'Kesenian', 0),
(8, 'Jurnalistik', 0),
(9, 'komputer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jns_seleksi`
--

CREATE TABLE `jns_seleksi` (
  `id_jns_seleksi` int(11) NOT NULL,
  `nama_seleksi` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jns_seleksi`
--

INSERT INTO `jns_seleksi` (`id_jns_seleksi`, `nama_seleksi`, `status`) VALUES
(1, 'Sholat', 0),
(3, 'olahraga', 0),
(4, 'Baca Quran', 0),
(5, 'Pengetahuan Umum', 0),
(8, 'Cerdas Cermat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_rumah` varchar(50) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `thn_pembelajaran` int(11) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `nama_lengkap`, `tmpt_lahir`, `tgl_lahir`, `alamat_rumah`, `no_tlp`, `nama_ibu`, `nama_ayah`, `pekerjaan_ayah`, `thn_pembelajaran`, `tgl_daftar`, `id_petugas`) VALUES
(4, 'Baiq Indri Astuti', 'Jorong', '2001-07-21', 'Jorong', '081907907933', 'Baiq Siti Maryam', 'Lalu Bakri', 'Petani', 0, '0000-00-00', 2),
(5, 'Baiq Desi Sesantriana', 'Jorong', '2017-12-17', 'Jorong', '081907907922', 'Baiq Siti Maryam', 'Lalu Bakri', 'Petani', 0, '0000-00-00', 2),
(6, 'Baiq Devi Sesantriani', 'Jorong', '2017-12-17', 'Jorong', '081907907911', 'Baiq Siti Maryam', 'Lalu Bakri', 'Petani', 0, '0000-00-00', 2),
(7, 'Djung Jamal', 'Rumah Sakit NEO', '0000-00-00', 'Neo City', '12345678912', 'Hayo', 'Hiya', 'TNI', 0, '0000-00-00', 2),
(8, 'Mahen', 'Rumah Sakit NEO', '2001-07-21', 'Neo City', '081907907900', 'asdf', 'wery', 'Polri', 0, '0000-00-00', 2),
(9, 'Tio Lionel', 'Rumah Sakit NEO', '0000-00-00', 'Neo City', '12345678912', 'Nonya Lionel', 'Tuan Lionel', 'TNI', 0, '0000-00-00', 2),
(10, 'Sofia Mawadah', 'Beraim', '2020-12-17', 'desa Beraim', '089675347878', 'Baiq Linda Malasari', 'M. Arif', 'Pekebun', 0, '0000-00-00', 2),
(11, 'amrina rosada', 'Rumah Sakit NEO', '0000-00-00', 'Neo City', '081907907933', 'annisak', 'alpan', 'TNI', 0, '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pengasuh`
--

CREATE TABLE `pengasuh` (
  `id_pengasuh` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `kompetensi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengasuh`
--

INSERT INTO `pengasuh` (`id_pengasuh`, `nama_lengkap`, `alamat`, `email`, `no_tlp`, `kompetensi`) VALUES
(1, 'Haical Chandrakuma Tarendra', 'Neo City', 'haicalTarendra@gmail.com', '081907907911', 'English'),
(4, 'Melviano Elfran Pratama', 'Neo City', 'ElfranPratama@gmail.com', '081907907933', 'Tahfiz'),
(5, 'Marisca Seira Lana', 'Neo City', 'Marisca@gmail.com', '081907907900', 'Kasidah'),
(8, 'Djung Jamal', 'Neo City', 'Djungjay@gmail.com', '081907907922', 'Olahraga'),
(11, 'Reinna', 'Neo City', 'reina@gmail.com', '089675347878', 'Kasidah'),
(12, 'Yuta', 'Neo City', 'yuta@gmail.com', '089675347878', 'Olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `status`) VALUES
(1, 'amir', 'amir', '63eefbd45d89e8c91f24b609f7539942', 1),
(2, 'Baiq Indri Astuti', 'indri', '71f7be7b8496f7ece8454b1bcdcd2162', 1);

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `id_santri` int(11) NOT NULL,
  `id_seleksi` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_rumah` varchar(50) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`id_santri`, `id_seleksi`, `nama_lengkap`, `tmpt_lahir`, `tgl_lahir`, `alamat_rumah`, `no_tlp`, `nama_ibu`, `nama_ayah`, `pekerjaan_ayah`, `tgl_masuk`) VALUES
(7, 27, 'Mahen', 'Rumah Sakit NEO', '2001-07-21', 'Neo City', '081907907900', 'asdf', 'wery', 'Polri', '0000-00-00'),
(8, 16, 'Djung Jamal', 'Rumah Sakit NEO', '0000-00-00', 'Neo City', '12345678912', 'Hayo', 'Hiya', 'TNI', '0000-00-00'),
(9, 22, 'Baiq Devi Sesantriani', 'Jorong', '2017-12-17', 'Jorong', '081907907911', 'Baiq Siti Maryam', 'Lalu Bakri', 'Petani', '0000-00-00'),
(10, 10, 'Baiq Indri Astuti', 'Jorong', '2001-07-21', 'Jorong', '081907907933', 'Baiq Siti Maryam', 'Lalu Bakri', 'Petani', '0000-00-00'),
(11, 19, 'Baiq Desi Sesantriana', 'Jorong', '2017-12-17', 'Jorong', '081907907922', 'Baiq Siti Maryam', 'Lalu Bakri', 'Petani', '0000-00-00'),
(12, 32, 'Tio Lionel', 'Rumah Sakit NEO', '0000-00-00', 'Neo City', '12345678912', 'Nonya Lionel', 'Tuan Lionel', 'TNI', '0000-00-00'),
(13, 37, 'Sofia Mawadah', 'Beraim', '2020-12-17', 'desa Beraim', '089675347878', 'Baiq Linda Malasari', 'M. Arif', 'Pekebun', '0000-00-00'),
(14, 42, 'amrina rosada', 'Rumah Sakit NEO', '0000-00-00', 'Neo City', '081907907933', 'annisak', 'alpan', 'TNI', '0000-00-00'),
(15, 10, 'Baiq Indri Astuti', 'Jorong', '2001-07-21', 'Jorong', '081907907933', 'Baiq Siti Maryam', 'Lalu Bakri', 'Petani', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `seleksi`
--

CREATE TABLE `seleksi` (
  `id_seleksi` int(11) NOT NULL,
  `id_jns_seleksi` int(11) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `tgl_seleksi` datetime NOT NULL DEFAULT current_timestamp(),
  `skor` varchar(10) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seleksi`
--

INSERT INTO `seleksi` (`id_seleksi`, `id_jns_seleksi`, `id_pendaftaran`, `tgl_seleksi`, `skor`, `keterangan`) VALUES
(10, 1, 4, '2022-06-23 12:41:12', '9', 'ok'),
(12, 3, 4, '2022-06-23 12:41:12', '9', 'ok'),
(13, 1, 4, '2022-06-23 12:47:54', '100', 'ok'),
(15, 3, 4, '2022-06-23 12:47:54', '100', 'ok'),
(16, 1, 7, '2022-06-23 12:48:26', '100', 'ok'),
(18, 3, 7, '2022-06-23 12:48:26', '100', 'ok'),
(19, 1, 5, '2022-06-24 11:04:43', '80', 'ok'),
(21, 3, 5, '2022-06-24 11:04:43', '80', 'ok'),
(22, 1, 6, '2022-06-29 10:08:07', '100', 'ok'),
(23, 3, 6, '2022-06-29 10:08:07', '100', 'ok'),
(24, 4, 6, '2022-06-29 10:08:07', '100', 'ok'),
(25, 5, 6, '2022-06-29 10:08:07', '100', 'ok'),
(27, 1, 8, '2022-06-29 10:13:14', '100', 'ok'),
(28, 3, 8, '2022-06-29 10:13:14', '100', 'ok'),
(29, 4, 8, '2022-06-29 10:13:14', '100', 'ok'),
(30, 5, 8, '2022-06-29 10:13:14', '100', 'ok'),
(32, 1, 9, '2022-07-05 13:01:06', '100', 'ok'),
(33, 3, 9, '2022-07-05 13:01:06', '100', 'ok'),
(34, 4, 9, '2022-07-05 13:01:06', '80', 'ok'),
(35, 5, 9, '2022-07-05 13:01:06', '100', 'ok'),
(37, 1, 10, '2022-07-12 05:58:52', '100', 'ok'),
(38, 3, 10, '2022-07-12 05:58:52', '100', 'ok'),
(39, 4, 10, '2022-07-12 05:58:52', '100', 'ok'),
(40, 5, 10, '2022-07-12 05:58:52', '100', 'ok'),
(41, 8, 10, '2022-07-12 05:58:53', '100', 'ok'),
(42, 1, 11, '2022-07-12 16:21:21', '100', 'ok'),
(43, 3, 11, '2022-07-12 16:21:21', '100', 'ok'),
(44, 4, 11, '2022-07-12 16:21:21', '100', 'ok'),
(45, 5, 11, '2022-07-12 16:21:21', '100', 'ok'),
(46, 8, 11, '2022-07-12 16:21:21', '100', 'ok');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_ekskul`
--
ALTER TABLE `detail_ekskul`
  ADD PRIMARY KEY (`id_detail_ekskul`),
  ADD KEY `fk_detail_ekskul` (`id_ekskul`),
  ADD KEY `fk_detail_santri` (`id_santri`);

--
-- Indexes for table `ekskul`
--
ALTER TABLE `ekskul`
  ADD PRIMARY KEY (`id_ekskul`),
  ADD KEY `fkk_jns_ekskul` (`id_jns_ekskul`),
  ADD KEY `fkk_pengasuh` (`id_pengasuh`);

--
-- Indexes for table `jns_ekskul`
--
ALTER TABLE `jns_ekskul`
  ADD PRIMARY KEY (`id_jns_ekskul`);

--
-- Indexes for table `jns_seleksi`
--
ALTER TABLE `jns_seleksi`
  ADD PRIMARY KEY (`id_jns_seleksi`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `petugas` (`id_petugas`);

--
-- Indexes for table `pengasuh`
--
ALTER TABLE `pengasuh`
  ADD PRIMARY KEY (`id_pengasuh`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id_santri`),
  ADD KEY `fk_seleksi` (`id_seleksi`);

--
-- Indexes for table `seleksi`
--
ALTER TABLE `seleksi`
  ADD PRIMARY KEY (`id_seleksi`),
  ADD KEY `fk_jns_seleksi` (`id_jns_seleksi`),
  ADD KEY `fk_pendaftar` (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_ekskul`
--
ALTER TABLE `detail_ekskul`
  MODIFY `id_detail_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ekskul`
--
ALTER TABLE `ekskul`
  MODIFY `id_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jns_ekskul`
--
ALTER TABLE `jns_ekskul`
  MODIFY `id_jns_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jns_seleksi`
--
ALTER TABLE `jns_seleksi`
  MODIFY `id_jns_seleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengasuh`
--
ALTER TABLE `pengasuh`
  MODIFY `id_pengasuh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `santri`
--
ALTER TABLE `santri`
  MODIFY `id_santri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seleksi`
--
ALTER TABLE `seleksi`
  MODIFY `id_seleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_ekskul`
--
ALTER TABLE `detail_ekskul`
  ADD CONSTRAINT `fk_detail_ekskul` FOREIGN KEY (`id_ekskul`) REFERENCES `ekskul` (`id_ekskul`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_detail_santri` FOREIGN KEY (`id_santri`) REFERENCES `santri` (`id_santri`) ON DELETE CASCADE;

--
-- Constraints for table `ekskul`
--
ALTER TABLE `ekskul`
  ADD CONSTRAINT `fkk_jns_ekskul` FOREIGN KEY (`id_jns_ekskul`) REFERENCES `jns_ekskul` (`id_jns_ekskul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkk_pengasuh` FOREIGN KEY (`id_pengasuh`) REFERENCES `pengasuh` (`id_pengasuh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `petugas` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Constraints for table `santri`
--
ALTER TABLE `santri`
  ADD CONSTRAINT `fk_seleksi` FOREIGN KEY (`id_seleksi`) REFERENCES `seleksi` (`id_seleksi`) ON DELETE CASCADE;

--
-- Constraints for table `seleksi`
--
ALTER TABLE `seleksi`
  ADD CONSTRAINT `fk_jns_seleksi` FOREIGN KEY (`id_jns_seleksi`) REFERENCES `jns_seleksi` (`id_jns_seleksi`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pendaftar` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id_pendaftaran`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
