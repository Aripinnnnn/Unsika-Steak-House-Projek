-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 05.43
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
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_order`
--

CREATE TABLE `tb_detail_order` (
  `id_dorder` int(11) NOT NULL,
  `check_available` int(11) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `keterangan_dorder` text DEFAULT NULL,
  `jumlah_dorder` int(11) NOT NULL,
  `hartot_dorder` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_dorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_detail_order`
--

INSERT INTO `tb_detail_order` (`id_dorder`, `check_available`, `id_order`, `id_masakan`, `keterangan_dorder`, `jumlah_dorder`, `hartot_dorder`, `id_user`, `status_dorder`) VALUES
(69, 1, 'ORD0001', 28, 'Medium Rare', 2, 2400000, 12, 0),
(70, 1, 'ORD0001', 34, 'Well done', 2, 600000, 12, 0),
(71, 1, 'ORD0001', 32, 'Medium rare', 1, 500000, 12, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'Administrator'),
(2, 'Waiter'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `kategori_masakan` varchar(128) NOT NULL,
  `nama_masakan` varchar(128) NOT NULL,
  `harga_masakan` int(128) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status_masakan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `kategori_masakan`, `nama_masakan`, `harga_masakan`, `foto`, `status_masakan`) VALUES
(16, 'Minuman', 'Jus Mangga', 9000, '27022020052834mangga.jpg', 1),
(17, 'Minuman', 'Jus Alpukat', 10000, '27022020052842alpukat.webp', 0),
(18, 'Minuman', 'Es Teh ', 5000, '27022020052850esteh.png', 1),
(28, 'Makanan', 'Tomahawk Steak 1 kg', 1200000, '16052024223820Tomahawk Steak.jpg', 1),
(29, 'Makanan', 'Tenderloin Steak 250 gr', 200000, '16052024224217Tenderloin Steak.jpg', 1),
(31, 'Makanan', 'Sirloin Steak 250 gr', 250000, '16052024224512Sirloin Steak.jpg', 1),
(32, 'Makanan', 'T bone Steak 400 gr', 500000, '16052024224647T bone Steak .jpg', 1),
(33, 'Makanan', 'Meltique Steak 250 gr', 150000, '16052024224747Meltique Steak.jpg', 1),
(34, 'Makanan', 'Brisket Steak 250 gr', 300000, '16052024224909Brisket Steak.jpg', 1),
(35, 'Makanan', 'Ribeye Steak 250 gr', 200000, '16052024230254Ribeye.jpg', 1),
(37, 'Minuman', 'Es Cendol', 10000, '17052024012845escendol.jpeg', 1),
(39, 'Minuman', 'Jus Apel', 12000, '17052024013207Jus Apel.jpg', 1),
(44, 'Minuman', 'Jus Pisang', 12000, '17052024013853Jus Pisang.jpg', 1),
(45, 'Minuman', 'Jus Tomat', 12000, '17052024013924Jus Tomat.jpg', 1),
(47, 'Minuman', 'Susu Tobrut Murni', 2000000, '17052024014352Susu.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_meja`
--

CREATE TABLE `tb_meja` (
  `meja_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_meja`
--

INSERT INTO `tb_meja` (`meja_id`, `status`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` varchar(50) NOT NULL,
  `meja_order` int(11) NOT NULL,
  `tanggal_order` int(11) NOT NULL,
  `aTanggal_order` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan_order` text DEFAULT NULL,
  `status_order` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `meja_order`, `tanggal_order`, `aTanggal_order`, `id_user`, `keterangan_order`, `status_order`) VALUES
('ORD0001', 1, 1715876665, '16-05-2024', 12, 'Harap perhatikan note yang telah saya berikan!', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_order` varchar(50) NOT NULL,
  `tanggal_transaksi` int(11) NOT NULL,
  `aTanggal_transaksi` varchar(50) NOT NULL,
  `hartot_transaksi` int(11) NOT NULL,
  `diskon_transaksi` int(11) NOT NULL,
  `totbar_transaksi` int(11) NOT NULL,
  `uang_transaksi` int(11) NOT NULL,
  `kembalian_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_order`, `tanggal_transaksi`, `aTanggal_transaksi`, `hartot_transaksi`, `diskon_transaksi`, `totbar_transaksi`, `uang_transaksi`, `kembalian_transaksi`) VALUES
(28, 12, 'ORD0001', 1715877361, '16-05-2024', 3500000, 10, 3150000, 3200000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `id_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(1, 'owner1', '123', 'Muhammad Sulton', 4),
(2, 'owner2', '123', 'Muhamad Arifin', 4),
(6, 'admin1', '123', 'Admin 1', 1),
(7, 'kasir1', '123', 'Kasir1', 3),
(8, 'waiter1', '123', 'Waiter 1', 2),
(9, 'waiter2', '123', 'Waiter 2', 2),
(10, 'pelanggan1', '123', 'Pelanggan 1', 5),
(11, 'pelanggan2', '123', 'Pelanggan 2', 5),
(12, 'pelanggan3', '123', 'Pelanggan 3', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  ADD PRIMARY KEY (`id_dorder`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indeks untuk tabel `tb_meja`
--
ALTER TABLE `tb_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  MODIFY `id_dorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tb_meja`
--
ALTER TABLE `tb_meja`
  MODIFY `meja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
