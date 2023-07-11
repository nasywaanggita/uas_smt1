-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 08:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gramedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(30) NOT NULL,
  `id_kategori` varchar(30) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `id_kategori`, `nama_barang`) VALUES
('4441', '08', 'headset logitech'),
('4442', '15', 'tali sepatu hitam'),
('4443', '12', 'hand sanitizer'),
('4444', '12', 'masker'),
('4446', '07', 'totebag laut bercerita');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(30) NOT NULL,
  `id_kategori` varchar(30) DEFAULT NULL,
  `id_kategori_buku` varchar(30) DEFAULT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `penulis` varchar(30) DEFAULT NULL,
  `penerbit` varchar(30) DEFAULT NULL,
  `tanggal_terbit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `id_kategori`, `id_kategori_buku`, `judul_buku`, `penulis`, `penerbit`, `tanggal_terbit`) VALUES
('9786020521657', '02', '120', 'wangsit cat cpns', 'karir salemba', 'gramedia widiarsana indonesia', '2019-07-28'),
('9786020664705', '02', '112', 'ekspresi tuban', 'fajar ciptandi', 'gramedia pustaka utama', '2021-12-06'),
('9786024242725', '02', '116', 'nadira', 'leila s chudori', 'kepustakaan populer gramedia', '2017-02-19'),
('9786024248338', '02', '117', 'karma cinta', 'bre redana', 'kepustakaan populer gramedia', '2018-04-01'),
('9786230009778', '02', '114', 'hanako', 'aida iro', 'elex media komputindo', '2019-11-19'),
('9786230015601', '02', '119', 'dzikir', 'miftah fardl', 'elex media komputindo', '2020-05-20'),
('9786230032905', '02', '115', 'kitab ms office', 'jubile', 'elex media komputindo', '2022-05-21'),
('9786235469065', '02', '113', 'aku anak indonesia', 'asri wulanti', 'kanak', '2021-11-29'),
('9789790713567', '02', '111', 'rahasia bertanam anggur', 'hadi tribowo', 'yrama widya', '2022-10-04'),
('9789797696122', '02', '118', 'psikologi sosial', 'agus abdul', 'rajagrafindo', '2013-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(30) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
('01', 'mega best seller'),
('02', 'buku'),
('03', 'eticket'),
('04', 'stationery'),
('05', 'ebook'),
('06', 'majalah'),
('07', 'fashion dan aksesoris'),
('08', 'teknologi'),
('09', 'mainan dan hobi'),
('10', 'makanan dan minuman'),
('11', 'olahraga'),
('12', 'peralatan kesehatan'),
('13', 'peralatan bayi'),
('14', 'tisu'),
('15', 'tali sepatu');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id_kategori_buku` varchar(50) NOT NULL,
  `jenis_kategori_buku` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id_kategori_buku`, `jenis_kategori_buku`) VALUES
('111', 'pertanian'),
('112', 'seni dan desain'),
('113', 'anak anak'),
('114', 'komik'),
('115', 'komputer dan teknologi'),
('116', 'fiksi dan sastra'),
('117', 'sejarah'),
('118', 'psikologi'),
('119', 'agama'),
('120', 'persiapan ujian');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_majalah`
--

CREATE TABLE `kategori_majalah` (
  `id_kategori_majalah` varchar(30) NOT NULL,
  `jenis_kategori_majalah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_majalah`
--

INSERT INTO `kategori_majalah` (`id_kategori_majalah`, `jenis_kategori_majalah`) VALUES
('221', 'majalah anak'),
('222', 'majalah wanita'),
('223', 'majalah pria');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_stationery`
--

CREATE TABLE `kategori_stationery` (
  `id_kategori_stationery` varchar(30) NOT NULL,
  `jenis_kategori_stationery` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_stationery`
--

INSERT INTO `kategori_stationery` (`id_kategori_stationery`, `jenis_kategori_stationery`) VALUES
('331', 'adhesive and tape'),
('332', 'penjilidan'),
('333', 'pemotong kertas'),
('334', 'peroduk kertas'),
('335', 'alat tulis');

-- --------------------------------------------------------

--
-- Table structure for table `majalah`
--

CREATE TABLE `majalah` (
  `kode_majalah` varchar(30) NOT NULL,
  `id_kategori` varchar(30) DEFAULT NULL,
  `id_kategori_majalah` varchar(30) DEFAULT NULL,
  `judul_majalah` varchar(50) DEFAULT NULL,
  `penerbit` varchar(30) DEFAULT NULL,
  `tanggal_terbit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `majalah`
--

INSERT INTO `majalah` (`kode_majalah`, `id_kategori`, `id_kategori_majalah`, `judul_majalah`, `penerbit`, `tanggal_terbit`) VALUES
('9770126319690', '06', '223', 'registry', 'majalah gramedia', '2022-10-06'),
('9771858175721', '06', '221', 'mombi 04', 'majalah gramedia', '2022-11-03'),
('9771858187052', '06', '221', 'bobo junior', 'majalah gramedia', '2022-11-13'),
('9771979105003', '06', '222', 'elle oktober', 'majalah gramedia', '2022-10-07'),
('9772302215956', '06', '222', 'her would 10', 'majalah gramedia', '2021-10-24'),
('9772339185505', '06', '223', 'swa 15', 'majalah gramedia', '2022-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(30) NOT NULL,
  `nama_pembeli` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telepon` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `alamat`, `no_telepon`) VALUES
('00300', 'hilmy pratama', 'jl bogor no 24', 2147483647),
('00301', 'milani alessandra', 'jl mawar no 18', 2147483647),
('00302', 'san jaegar', 'jl cempaka no 14', 2147483647),
('00303', 'abelva rajendra', 'jl bandung no 19', 2147483647),
('00304', 'azzam albaihaqi', 'jl dahlia no 44', 2147483647),
('00305', 'haura jasmine', 'jl supratman no 11', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `stationery`
--

CREATE TABLE `stationery` (
  `kode_stationery` varchar(30) NOT NULL,
  `id_kategori` varchar(30) DEFAULT NULL,
  `id_kategori_stationery` varchar(30) DEFAULT NULL,
  `nama_stationery` varchar(50) DEFAULT NULL,
  `produsen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stationery`
--

INSERT INTO `stationery` (`kode_stationery`, `id_kategori`, `id_kategori_stationery`, `nama_stationery`, `produsen`) VALUES
('00501', '04', '331', 'double tape', 'pt karya utama'),
('00502', '04', '331', 'lem kertas', 'pt karya utama'),
('00503', '04', '332', 'id card', 'pt karya utama'),
('00504', '04', '332', 'clip kertas', 'china'),
('00505', '04', '333', 'gunting', 'pt karya utama'),
('00506', '04', '333', 'cutter', 'pt karya utama'),
('00507', '04', '334', 'binder', 'pt karya utama'),
('00508', '04', '334', 'sticky note', 'pt karya utama'),
('00509', '04', '335', 'pensil 2b', 'parker'),
('00510', '04', '335', 'balpoint', 'parker');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(30) NOT NULL,
  `id_pembeli` varchar(30) DEFAULT NULL,
  `id_kategori` varchar(30) DEFAULT NULL,
  `nama_transaksi` varchar(50) DEFAULT NULL,
  `jumlah` varchar(25) DEFAULT NULL,
  `harga` varchar(25) DEFAULT NULL,
  `subtotal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pembeli`, `id_kategori`, `nama_transaksi`, `jumlah`, `harga`, `subtotal`) VALUES
('000060', '00300', '12', 'hand sanitizer', '2', '10000', '20000'),
('000061', '00300', '07', 'totebag laut bercerita', '1', '45000', '45000'),
('000062', '00301', '02', 'nadira', '1', '60000', '60000'),
('000063', '00301', '02', 'hanako', '1', '45000', '45000'),
('000064', '00302', '08', 'headset logitech', '1', '30000', '30000'),
('000065', '00302', '02', 'wangsit cat cpns', '1', '150000', '150000'),
('000066', '00303', '06', 'bobo junior', '1', '50000', '50000'),
('000067', '00303', '15', 'tali sepatu hitam', '2', '10000', '20000'),
('000068', '00304', '02', 'dzikir', '1', '50000', '50000'),
('000069', '00304', '12', 'hand sanitizer', '2', '10000', '20000'),
('000070', '00305', '07', 'totebag laut bercerita', '2', '45000', '90000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_kategori_buku` (`id_kategori_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id_kategori_buku`);

--
-- Indexes for table `kategori_majalah`
--
ALTER TABLE `kategori_majalah`
  ADD PRIMARY KEY (`id_kategori_majalah`);

--
-- Indexes for table `kategori_stationery`
--
ALTER TABLE `kategori_stationery`
  ADD PRIMARY KEY (`id_kategori_stationery`);

--
-- Indexes for table `majalah`
--
ALTER TABLE `majalah`
  ADD PRIMARY KEY (`kode_majalah`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_kategori_majalah` (`id_kategori_majalah`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `stationery`
--
ALTER TABLE `stationery`
  ADD PRIMARY KEY (`kode_stationery`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_kategori_stationery` (`id_kategori_stationery`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`id_kategori_buku`) REFERENCES `kategori_buku` (`id_kategori_buku`);

--
-- Constraints for table `majalah`
--
ALTER TABLE `majalah`
  ADD CONSTRAINT `majalah_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `majalah_ibfk_2` FOREIGN KEY (`id_kategori_majalah`) REFERENCES `kategori_majalah` (`id_kategori_majalah`);

--
-- Constraints for table `stationery`
--
ALTER TABLE `stationery`
  ADD CONSTRAINT `stationery_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `stationery_ibfk_2` FOREIGN KEY (`id_kategori_stationery`) REFERENCES `kategori_stationery` (`id_kategori_stationery`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
