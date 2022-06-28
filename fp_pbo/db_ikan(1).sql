-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 09:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ikan`
--

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `noTransaksi` int(10) NOT NULL,
  `idCostumer` int(10) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`noTransaksi`, `idCostumer`, `total`) VALUES
(2, 1, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `tanggal` date NOT NULL,
  `NoFaktur` varchar(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `jenis_ikan` varchar(20) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `total` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`tanggal`, `NoFaktur`, `id_pelanggan`, `jenis_ikan`, `jumlah`, `harga`, `total`) VALUES
('2022-06-27', '1', 2, 'BANDENG', 3, 3000, 9000),
('2022-06-27', '3', 2, 'MUJAER', 5, 1500, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ikan`
--

CREATE TABLE `tb_ikan` (
  `id_ikan` int(11) NOT NULL,
  `jenis_ikan` varchar(100) NOT NULL,
  `Id_nelayan` int(20) NOT NULL,
  `harga_ikan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ikan`
--

INSERT INTO `tb_ikan` (`id_ikan`, `jenis_ikan`, `Id_nelayan`, `harga_ikan`) VALUES
(1, 'mujair', 2, 1500),
(2, 'lele', 1, 3000),
(3, 'bandeng', 1, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nelayan`
--

CREATE TABLE `tb_nelayan` (
  `id_nelayan` int(11) NOT NULL,
  `nama_nelayan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nelayan`
--

INSERT INTO `tb_nelayan` (`id_nelayan`, `nama_nelayan`, `alamat`) VALUES
(1, 'maulana', 'surabaya'),
(2, 'Fiqi', 'sidayu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nm_pelanggan` text NOT NULL,
  `almt_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nm_pelanggan`, `almt_pelanggan`) VALUES
(1, 'fenti', 'gresik'),
(2, 'yosia', 'sidoarjo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`noTransaksi`);

--
-- Indexes for table `tb_ikan`
--
ALTER TABLE `tb_ikan`
  ADD PRIMARY KEY (`id_ikan`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `noTransaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_ikan`
--
ALTER TABLE `tb_ikan`
  MODIFY `id_ikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
