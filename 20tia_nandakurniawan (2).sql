-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 10:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `20tia_nandakurniawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_penjualan` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sembako` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no_penjualan`, `id_user`, `id_sembako`, `jumlah`, `total`) VALUES
('PJ1655340496', 8, 2, 2, 60000),
('PJ1655341281', 11, 5, 2, 20000),
('PJ1655362156', 11, 2, 1, 30000),
('PJ1655362694', 11, 2, 2, 60000),
('PJ1655364184', 11, 2, 2, 60000),
('PJ1655364184', 11, 3, 1, 30000),
('PJ1655365127', 11, 5, 2, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sembako` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` int(11) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `prodi` int(11) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `jenis_kelamin`, `email`, `prodi`, `asal_sekolah`, `no_hp`, `alamat`) VALUES
(5, 'Nanda Kurniawan', 20553011, 'Laki-laki', 'nanda20@mahasiswa.pcr.ac.id', 4, 'SMAN Binsus', 0, 'Jalan pekanbaru'),
(7, 'Kurniawan', 2055301104, 'Laki-laki', 'Kurniawan20ti@mahasiswa.pcr.ac.id', 4, 'SMANSUS', 0, 'Jalan Pekan'),
(9, 'Nanda Kurniaw', 201119, 'Laki-laki', 'satudua@gmail.com', 6, 'SMAN Binsus', 8121005, 'Jalan pekanbaru');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `bidang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `nama`, `semester`, `bidang`) VALUES
(1, 'Elektro', '2', 'Listrik'),
(2, 'Basis Data Lanjut', 'Semester 3', 'Data Science');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_bayar` int(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pembayaran` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Belum Dikirim'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_penjualan`, `id_user`, `total_bayar`, `tanggal`, `alamat`, `pembayaran`, `gambar`, `keterangan`, `status`) VALUES
(1, 'PJ1655340496', 8, 60000, '16/06/2022', 'Jalan pekanbaru', 'BRI', 'Bukti_absen_DDO21.png', 'MANTAP', 'Proses Pengiriman'),
(2, 'PJ1655340496', 8, 60000, '16/06/2022', 'Jalan pekanbaru', 'BRI', 'Bukti_absen_DDO22.png', 'MANTAP', 'Proses Pengiriman'),
(3, 'PJ1655341281', 11, 20000, '16/06/2022', 'Jalan pekanbaru', 'MANDIRI', 'Screenshot_2021-04-24_151451.png', 'Selesai', 'Dikirm'),
(4, 'PJ1655362156', 11, 30000, '16/06/2022', 'jalan meranti', 'BRI', 'install_google_api_composer.png', 'Selesai', 'Belum Dikirim'),
(5, 'PJ1655362694', 11, 60000, '16/06/2022', 'jalan melur', 'BRI', 'github_api.png', 'Selesai', 'Belum Dikirim'),
(6, 'PJ1655364184', 11, 90000, '16/06/2022', 'jalan darat 2', 'BNI', 'PANCASILA.png', 'Selesai', 'Belum Dikirim'),
(7, 'PJ1655365127', 11, 20000, '16/06/2022', 'Jalan pekanbaru', 'BRI', 'PANCASILA1.png', 'Selesai', 'Belum Dikirim');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ruangan` varchar(20) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `akreditasi` varchar(15) NOT NULL,
  `nama_kaprodi` varchar(255) NOT NULL,
  `tahun_berdiri` int(10) NOT NULL,
  `output_lulusan` varchar(255) NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama`, `ruangan`, `jurusan`, `akreditasi`, `nama_kaprodi`, `tahun_berdiri`, `output_lulusan`, `gambar`) VALUES
(4, 'Teknik Informatika', '300', 'JTI', 'A', 'Nanda', 2010, 'Programmer', 'default.jpg'),
(6, 'Komputer', '3', 'JTI', 'A', 'Wankur', 2010, 'Komputer', 'komputer1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sembako`
--

CREATE TABLE `sembako` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sembako`
--

INSERT INTO `sembako` (`id`, `nama`, `stok`, `harga`, `gambar`) VALUES
(2, 'Minyak', 4, 30000, 'minyak.jpg'),
(3, 'Gula', 2, 30000, 'gula.jpg'),
(5, 'Gula', 8, 10000, 'gula1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `gambar`, `role`, `date_created`) VALUES
(1, 'nandaw', 'nanda@gmail.com', '$2y$10$EuetgYP4.PujL3j/I9d.I.wblH1UVOyrvQnuCb79pEr4gWJVSjRpi', 'default.jpg', 'Admin', 1650502960),
(2, 'WIWIWI', 'wiwi@gmail.com', '$2y$10$Du0PhLz8lpxrdHLYoNL2suR6nwnr1Yz6eHBLwzQDMvapvg6XnGQBC', 'default.jpg', 'User', 1650502995),
(3, 'kurniawan', 'wan@gmail.com', '$2y$10$SDy09YUVLArcvt0IWmO.yOTWb6ygAxJZEyT9oFpmB/tZq0vpWz/Vy', 'default.jpg', 'User', 1650504500),
(4, 'Nanda Kurniawan', 'wawan@gmail.com', '$2y$10$x8MDMoEjtv2Oq4cjFn88VugvKGBeTtEIQTL91o9EhT0gUQ4U6uYCa', 'default.jpg', 'Admin', 1650654504),
(5, 'Nanda Kurniawan', '123@gmail.com', '$2y$10$.qPQcgAD1jLH9Kcyk/T9cOFdivE4N77W7Kb3l0tfdkv/odGtKUtMu', 'default.jpg', 'User', 1650716585),
(6, 'Wawan', 'Wawan1@gmail.com', '$2y$10$ynWaQKROVwvsKGjqsjtWj.9y/bGzeJ8cmxOmAq.05pAZEEG1jpY/e', 'default.jpg', 'User', 1650805748),
(7, 'user', 'user@gmail.com', '$2y$10$MNw.Df6.gJOMw9xurpDVFOkTjJ4r.YIcLGXWcrwBnjPA8ADXDFo4.', 'default.jpg', 'User', 1650805862),
(8, 'admin', 'admin@gmail.com', '$2y$10$l16rw/50DzHHmQx6NVI7bOJi4CyXDjCyr4CSKx6/bikqujq9hw/We', 'default.jpg', 'Admin', 1650805919),
(9, 'Nanda Kurniawan', 'nanda1@gmail.com', '$2y$10$1WhkKOA.xqQeLvzawg.H9OlLBs5XS23zdtnw7kLnZATyOirfGCUDe', 'default.jpg', 'User', 1651108202),
(10, 'nanda', 'nandakur@gmail.com', '$2y$10$s4QAJa4n54XYJAvxKTwN8.R5ZhnbaO7AgubuizeO9A9YM9A4g10g6', 'default.jpg', 'User', 1652090594),
(11, 'wawan', 'wankur@gmail.com', '$2y$10$2anyTFj2cBC5hfknauAUiefP4gMslS8ETg5LFgDCOt2ud6G/UUuuq', 'default.jpg', 'User', 1655280600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_sembako` (`id_sembako`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_sembako` (`id_sembako`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodi` (`prodi`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sembako`
--
ALTER TABLE `sembako`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sembako`
--
ALTER TABLE `sembako`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`id_sembako`) REFERENCES `sembako` (`id`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`id_sembako`) REFERENCES `sembako` (`id`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `prodi` FOREIGN KEY (`prodi`) REFERENCES `prodi` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
