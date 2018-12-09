-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Des 2018 pada 22.57
-- Versi Server: 5.6.16-log
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reservasigedung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gedung`
--

CREATE TABLE IF NOT EXISTS `gedung` (
  `ID_GEDUNG` varchar(5) NOT NULL,
  `NAMA_GEDUNG` varchar(100) DEFAULT NULL,
  `ALAMAT_GEDUNG` varchar(100) DEFAULT NULL,
  `HARGA` int(11) NOT NULL,
  PRIMARY KEY (`ID_GEDUNG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gedung`
--

INSERT INTO `gedung` (`ID_GEDUNG`, `NAMA_GEDUNG`, `ALAMAT_GEDUNG`, `HARGA`) VALUES
('GDG01', 'A1', 'Malang', 200000),
('GDG02', 'A2', 'Surabaya', 500000),
('GDG03', 'A3', 'Bali', 1500000),
('GDG04', 'B1', 'Jakarta', 2000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembatalan`
--

CREATE TABLE IF NOT EXISTS `pembatalan` (
  `ID_PEMBATALAN` varchar(5) NOT NULL,
  `ID_RESERVASI` varchar(5) DEFAULT NULL,
  `UANGKEMBALI` int(11) DEFAULT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_PEMBATALAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembatalan`
--

INSERT INTO `pembatalan` (`ID_PEMBATALAN`, `ID_RESERVASI`, `UANGKEMBALI`, `DATE`) VALUES
('BTL01', 'PS001', 800000, '2018-12-06 13:49:57'),
('BTL02', 'PS004', 640000, '2018-12-07 21:53:34'),
('Tes', 'PS002', 1440000, '2018-12-06 13:53:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE IF NOT EXISTS `reservasi` (
  `ID_RESERVASI` varchar(5) NOT NULL,
  `ID_GEDUNG` varchar(5) DEFAULT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  `TELP` varchar(15) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `TGL_PINJAM` date DEFAULT NULL,
  `TGL_KEMBALI` date DEFAULT NULL,
  `JUMLAH_HARI` int(11) DEFAULT NULL,
  `BIAYA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_RESERVASI`),
  KEY `FK_RELATIONSHIP_1` (`ID_GEDUNG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`ID_RESERVASI`, `ID_GEDUNG`, `NAMA`, `TELP`, `ALAMAT`, `TGL_PINJAM`, `TGL_KEMBALI`, `JUMLAH_HARI`, `BIAYA`) VALUES
('PS003', 'GDG01', 'Finas', 'Bali', '08231309213', '2018-01-01', '2018-01-03', 3, 600000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
