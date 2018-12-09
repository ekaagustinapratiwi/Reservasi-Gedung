-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Des 2018 pada 06.58
-- Versi Server: 5.6.16-log
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `responsiya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembatalan`
--

CREATE TABLE IF NOT EXISTS `pembatalan` (
  `nobatal` int(10) NOT NULL AUTO_INCREMENT,
  `noreser` varchar(20) NOT NULL,
  `uangkembali` int(20) NOT NULL,
  PRIMARY KEY (`nobatal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE IF NOT EXISTS `reservasi` (
  `noreser` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `jumlah_hari` int(10) DEFAULT NULL,
  `biaya` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`noreser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`noreser`, `nama`, `telp`, `alamat`, `tgl_pinjam`, `tgl_kembali`, `jumlah_hari`, `biaya`) VALUES
(2, 'a', '7', '', '2018-09-09', '2018-09-08', 3, ''),
(3, 'ade', '89', 'malang', '2018-08-09', '2018-09-09', 3, ''),
(4, 'asdfghj', '456', 'malang', '2018-09-09', '2018-08-09', 5, '45000'),
(5, 'yudha', '0892356475', 'malang', '2018-08-22', '2018-08-24', 2, '45000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
