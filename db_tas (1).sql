-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2019 pada 19.34
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bahan`
--

CREATE TABLE `tb_bahan` (
  `id_bahan` int(11) NOT NULL,
  `nama_bahan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_bahan`
--

INSERT INTO `tb_bahan` (`id_bahan`, `nama_bahan`) VALUES
(1, 'Leather - Nabati'),
(2, 'Leather - Chrome'),
(3, 'Leather - PullUp'),
(4, 'Leather - Suede'),
(5, 'Polyester'),
(6, 'Canvas'),
(7, 'Satin'),
(8, 'Serge de Nimes (denim)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_custom`
--

CREATE TABLE `tb_custom` (
  `id_custom` varchar(64) NOT NULL,
  `jenis_tas` varchar(155) NOT NULL,
  `bahan` varchar(155) NOT NULL,
  `type_sleting` varchar(155) NOT NULL,
  `bag_depan` varchar(155) NOT NULL,
  `bag_belakang` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `name`, `price`, `image`, `description`) VALUES
('5c9a2abb29b09', 'user', 1231, 'default.jpg', '4123hahaha'),
('5c9a2c3e57cba', 'asdaxfhdfg', 12412, '5c9a2c3e57cba.png', 'wgsdfs'),
('5c9e4ced3dbe3', 'Tas Hitam', 1000, '5c9e4ced3dbe3.png', 'Produk Sangat Baik '),
('5ca62998d1e58', 'admin1', 56565656, '5ca62998d1e58.png', 'jadiiiiiiiiiiiiiiii'),
('5ca62f3937784', 'Tas Merah', 15964, '5ca62f3937784.png', 'Tst Jadiii');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tas`
--

CREATE TABLE `tb_tas` (
  `id_tas` int(11) NOT NULL,
  `nama_tas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tas`
--

INSERT INTO `tb_tas` (`id_tas`, `nama_tas`) VALUES
(1, 'TAS KANVAS'),
(2, 'TAS LAPTOP'),
(3, 'TAS RANSEL'),
(4, 'TAS KOPER'),
(5, 'TAS SEKOLAH'),
(6, 'TAS TRAVEL'),
(7, 'TAS TROLI  '),
(8, 'TAS WANITA'),
(9, 'TAS KULIT'),
(10, 'GOODY BAG'),
(11, 'SOFT CASE '),
(12, 'TAS BEKAL'),
(13, 'TAS OLAHRAGA '),
(14, 'TAS KERJA'),
(15, 'TAS ORGANIZER'),
(16, 'TAS PINGGANG'),
(17, 'TAS PROMOSI '),
(18, 'TAS SEMINAR'),
(19, 'TAS SPUNBOND '),
(20, 'TAS RANSEL LAPTOP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` enum('kasir','gudang','admin','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin99', 'admin'),
(2, 'kasir', 'kasir99', 'kasir'),
(3, 'gudang', 'gudang99', 'gudang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` double NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode`, `barang`, `jumlah`, `total_harga`, `tgl`) VALUES
(0, 'T0004', 'TAS HITAM', 2, 200000, '2019-03-31 00:00:00'),
(1, 'T005', 'TAS KOPER', 3, 150000, '2018-12-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_bahan`
--
ALTER TABLE `tb_bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indeks untuk tabel `tb_custom`
--
ALTER TABLE `tb_custom`
  ADD PRIMARY KEY (`id_custom`);

--
-- Indeks untuk tabel `tb_tas`
--
ALTER TABLE `tb_tas`
  ADD PRIMARY KEY (`id_tas`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_bahan`
--
ALTER TABLE `tb_bahan`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_tas`
--
ALTER TABLE `tb_tas`
  MODIFY `id_tas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
