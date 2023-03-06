-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 06:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurs2138_mto`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_peserta`
--

CREATE TABLE `data_peserta` (
  `id_peserta` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama_peserta` varchar(100) NOT NULL,
  `kewarganegara` varchar(100) NOT NULL,
  `jeniskelamin` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_peserta` varchar(100) NOT NULL,
  `no_telp_peserta` varchar(15) NOT NULL,
  `fk` varchar(15) NOT NULL,
  `tahunmasuk` varchar(30) NOT NULL,
  `instansi` varchar(15) NOT NULL,
  `alamatinstansi` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tanggalevent` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_peserta`
--

INSERT INTO `data_peserta` (`id_peserta`, `username`, `nama_peserta`, `kewarganegara`, `jeniskelamin`, `tgl_lahir`, `alamat_peserta`, `no_telp_peserta`, `fk`, `tahunmasuk`, `instansi`, `alamatinstansi`, `email`, `tanggalevent`, `nama_file`) VALUES
(29, 'admin', 'maul', 'indonesia', 'Laki-laki', '2222-10-23', 'lkasl', 'lkasdlka', 'lksalkdj', 'lkjasdlkj', 'lkjaslkd', 'lkajsldk', 'maol2682@yahoo.com', '17-19 Februari 2022', '17-19 Februari 2022-maul-CRI .png');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `tanggal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `tanggal`) VALUES
(1, '17-19 Februari 2022'),
(2, '17-19 Maret 2022'),
(3, '26-28 Juni 2022'),
(4, '5-7 Mei 2022');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'adminlho'),
('Anggia Rindjani Larasati ', 'mondol1983'),
('anggiarindjanilarasati@gmail.c', 'mondol1983'),
('Darwati', 'abidrohman16'),
('dr.fikriff', 'Dr.fikriff24101991'),
('iecgc', 'iecgc'),
('Lia Vandansari', 'sudahsholat?'),
('Lucy', '197566'),
('maulana', 'gtg'),
('Syekhinna ', 'TuhanYesus'),
('wiwid.santiko', 'apaadanya157');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_peserta`
--
ALTER TABLE `data_peserta`
  ADD PRIMARY KEY (`id_peserta`) USING BTREE,
  ADD KEY `username` (`username`),
  ADD KEY `username_2` (`username`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_peserta`
--
ALTER TABLE `data_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_peserta`
--
ALTER TABLE `data_peserta`
  ADD CONSTRAINT `data_peserta_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
