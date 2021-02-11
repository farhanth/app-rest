-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 06:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_token`
--

CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akses_token`
--

INSERT INTO `akses_token` (`id_akses_token`, `id_user`, `access_token`, `ip_address`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoxLCJ1c2VybmFtZSI6ImZhcmhhbnRoIiwiZW1haWwiOiJmYXJoYW50YXVmaWs5OEBnbWFpbC5jb20iLCJwYXNzd29yZCI6ImQxYmJiMmFmNjlmZDM1MGI2ZDZiZDg4NjU1NzU3YjQ3Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTAyLTEwVDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYxMzA2MzM3MSwiZXhwIjoxNjEzMDY3NjkxfQ.zd1fmdBSkcMG-p-KOIwx5hJ5nCDvPZlH3R9rvOz--_M', '192.168.1.4'),
(2, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoxLCJ1c2VybmFtZSI6ImZhcmhhbnRoIiwiZW1haWwiOiJmYXJoYW50YXVmaWs5OEBnbWFpbC5jb20iLCJwYXNzd29yZCI6ImQxYmJiMmFmNjlmZDM1MGI2ZDZiZDg4NjU1NzU3YjQ3Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTAyLTEwVDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYxMzA2MzM5MywiZXhwIjoxNjEzMDY3NzEzfQ.4N0lTxkFcXZSWDTEiImZM6KKpuvK5R0x3uCKsSHy2io', '192.168.1.4'),
(3, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoxLCJ1c2VybmFtZSI6ImZhcmhhbnRoIiwiZW1haWwiOiJmYXJoYW50YXVmaWs5OEBnbWFpbC5jb20iLCJwYXNzd29yZCI6ImQxYmJiMmFmNjlmZDM1MGI2ZDZiZDg4NjU1NzU3YjQ3Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTAyLTEwVDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYxMzA2NTMzOSwiZXhwIjoxNjEzMDY5NjU5fQ.Sz3Kg48dx4rM6Z13Ud31Pyrpxh2tesUTPdsC1HusVu0', '192.168.1.4'),
(4, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoyLCJ1c2VybmFtZSI6InVtZW4iLCJlbWFpbCI6InVtZW5AZ21haWwuY29tIiwicGFzc3dvcmQiOiI1MWI4YWJkMDQ1OTk4MzYwNTEwOGM3OGEzNmE3NWE3MSIsInJvbGUiOjEsInRhbmdnYWxfZGFmdGFyIjoiMjAyMS0wMi0xMVQxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE2MTMwNjU1NjMsImV4cCI6MTYxMzA2OTg4M30.469ynHTvfNgitmLASFO6Xqyx3O9RPTnFqiYsZokd0ro', '192.168.1.4');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `tanggal_krs` date NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `id_matakuliah`, `id_mahasiswa`) VALUES
(1, '2021-02-11', 1, 1),
(2, '2021-02-11', 3, 1),
(3, '2021-02-11', 2, 1),
(4, '2021-02-11', 5, 2),
(5, '2021-02-11', 2, 2),
(6, '2021-02-11', 6, 3),
(7, '2021-02-11', 5, 3),
(8, '2021-02-11', 2, 4),
(9, '2021-02-11', 3, 4),
(10, '2021-02-11', 6, 4),
(11, '2021-02-11', 1, 5),
(12, '2021-02-11', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `npm` varchar(8) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `jurusan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `npm`, `nama`, `jurusan`) VALUES
(1, '52416658', 'Farhan TH', 'Teknik Informatika'),
(2, '51316122', 'Umen', 'Dokter Hewan'),
(3, '53416125', 'Jasmin', 'Teknik Mesin'),
(4, '51615901', 'Hand Sanitizer', 'Teknik Kebersihan'),
(5, '12345678', 'Mamang Postman', 'TIKI JNE'),
(7, '12345679', 'Ihiy Post', 'Test Post');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(64) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Algoritma Dasar', 3),
(2, 'Proyek Perangkat Lunak', 3),
(3, 'Pemrograman Web', 3),
(4, 'Manajemen Projek', 3),
(5, 'Basis Data', 2),
(6, 'Sistem Operasi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `role`, `tanggal_daftar`) VALUES
(1, 'farhanth', 'farhantaufik98@gmail.com', 'd1bbb2af69fd350b6d6bd88655757b47', 2, '2021-02-11'),
(2, 'umen', 'umen@gmail.com', '51b8abd0459983605108c78a36a75a71', 1, '2021-02-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_akses_token`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_akses_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD CONSTRAINT `akses_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
