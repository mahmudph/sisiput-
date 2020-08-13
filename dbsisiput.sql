-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Sep 2018 pada 06.14
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsisiput`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbanggota`
--

CREATE TABLE `tbanggota` (
  `idanggota` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('Laki-Laki','Perempuan','','','') NOT NULL,
  `noidentitas` varchar(50) NOT NULL,
  `Instansi` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `notlf` varchar(13) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `foto` varchar(125) NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL,
  `tgl_daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbanggota`
--

INSERT INTO `tbanggota` (`idanggota`, `nama`, `jk`, `noidentitas`, `Instansi`, `alamat`, `notlf`, `pekerjaan`, `foto`, `status`, `tgl_daftar`) VALUES
(5, 'Nurmantara Rangga Galih Pangestu', 'Laki-Laki', '17011154', 'UNDIKSHA', 'Jl. Jelantik Gingsir Nomor. 17, Suksada Buleleng', '0856392223', 'Makan', '5b95f434ae9c7.jpg', 'Aktif', '2018-09-09'),
(6, 'I Wayan Gunung', 'Laki-Laki', '3232323', 'Soidas', 'Kejrekr', '3232', 'Sdfkd', '5baef5a4b97da.jpg', 'Aktif', '2018-09-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkategori`
--

CREATE TABLE `tbkategori` (
  `idkategori` int(11) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbkategori`
--

INSERT INTO `tbkategori` (`idkategori`, `kategori`) VALUES
(15, 'Buku'),
(16, 'Jurnal'),
(17, 'Skripsi'),
(18, 'Tugas Akhir'),
(19, 'Tesis'),
(22, 'Majalah ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkeuangan`
--

CREATE TABLE `tbkeuangan` (
  `idcash` int(11) NOT NULL,
  `uang_masuk` varchar(25) NOT NULL,
  `uang_keluar` varchar(25) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkoleksi`
--

CREATE TABLE `tbkoleksi` (
  `id` int(11) NOT NULL,
  `id_koleksi` varchar(25) NOT NULL,
  `kode_koleksi` varchar(25) NOT NULL,
  `isbn` varchar(125) DEFAULT NULL,
  `judul` varchar(225) NOT NULL,
  `pengarang1` varchar(225) DEFAULT NULL,
  `pengarang2` varchar(225) NOT NULL,
  `editor` varchar(125) DEFAULT NULL,
  `penerjemah` varchar(125) DEFAULT NULL,
  `kota_terbit` varchar(125) DEFAULT NULL,
  `penerbit` varchar(55) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `foto` varchar(125) NOT NULL,
  `copies` int(11) NOT NULL,
  `sisa_copies` int(11) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `jenis_buku` varchar(25) DEFAULT NULL,
  `kategori` varchar(50) NOT NULL,
  `cetakan` varchar(25) DEFAULT NULL,
  `edisi` varchar(25) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbkoleksi`
--

INSERT INTO `tbkoleksi` (`id`, `id_koleksi`, `kode_koleksi`, `isbn`, `judul`, `pengarang1`, `pengarang2`, `editor`, `penerjemah`, `kota_terbit`, `penerbit`, `tahun_terbit`, `foto`, `copies`, `sisa_copies`, `deskripsi`, `jenis_buku`, `kategori`, `cetakan`, `edisi`, `Status`, `tgl_update`) VALUES
(1, 'K-0001', '338.5', '978-979-769-483-8', 'EKONOMI MANAJERIAL DENGAN PENDEKATAN MATEMATIS', 'Tasman, Aulia', 'Tasman, Aulia', 'Nugroho, Arissetyanto', '-', 'Depok', 'Rajawali Pers', 2018, '5b9bdfe156755.jpeg', 1, 1, 'Buku Ekonomi Manajerial', 'EKONOMI', 'Buku', '5', 'Revisi', 'Tersedia', '2018-09-14'),
(2, 'K-0002', '658.5', '978-979-061-553-3', 'MANAJEMEN OPERASI: MANAJEMEN KEBERLANGSUNGAN DAN RANTAI PASOKAN', 'Heizer, Jay', 'Heizer, Jay', 'Halim, Dedy A.', 'Karunia, Hirson', 'Jakarta', 'Salemba Empat', 2017, '5b9bdeecea5ac.jpg', 5, 5, 'Buku Manajemen Operasi', 'MANAJEMEN', 'Buku', '3', '11', 'Tersedia', '2018-09-14'),
(3, 'K-0003', '658.81', '979-638-817-6', 'MANAJEMEN PEMASARAN; JIL. 1', 'Kotler, Philip', 'Kotler, Philip', '-', 'Molan, Benyamin', 'Jakarta', 'Indeks', 2017, '5b9be0157645c.jpeg', 1, 1, 'Manajemen Pemasaran', 'MANAJEMEN', 'Buku', '-', '12', 'Tersedia', '2018-09-14'),
(4, 'K-0004', '658.81', '978-0-13-600998-6', 'MANAJEMEN PEMASARAN; JIL. 1', 'Kotler, Philip', 'Kotler, Philip', 'Maulana, Adi', 'Sabran, Bob', 'Jakarta', 'Erlangga', 2009, '5b9be055822a8.jpeg', 1, 1, 'Manajemen Pemasaran', 'MANAJEMEN', 'Buku', '-', '13', 'Tersedia', '2018-09-14'),
(5, 'K-0005', '658.81', '978-0-13-600998-6', 'MANAJEMEN PEMASARAN; JIL. 2', 'Kotler, Philip', 'Kotler, Philip', 'Maulana, Adi', 'Sabran, Bob', 'Jakarta', 'Erlangga', 2009, '5b9be072e2bec.jpeg', 1, 1, 'Manajemen Pemasaran', 'MANAJEMEN', 'Buku', '-', '13', 'Tersedia', '2018-09-14'),
(6, 'K-0006', '658.3', '978-979-061-052-1', 'MANAJEMEN SUMBER DAYA MANUSIA: MENCAPAI KEUNGGULAN BERSAING; BUKU 1', 'Noe, Raymond A.', 'Noe, Raymond A.', '-', 'Wijaya, David', 'Jakarta', 'Salemba Empat', 2014, '5b9bdf34e20a7.jpg', 4, 4, 'MSDM', 'MANAJEMEN', 'Buku', '6', '6', 'Tersedia', '2018-09-14'),
(7, 'K-0007', '658.3', '978-979-061-053-8', 'MANAJEMEN SUMBER DAYA MANUSIA: MENCAPAI KEUNGGULAN BERSAING; BUKU 2', 'Noe, Raymond A.', 'Noe, Raymond A.', '-', 'Wijaya, David', 'Jakarta', 'Salemba Empat', 2014, '5b9bdf1c34dd6.jpeg', 5, 5, 'MSDM', 'MANAJEMEN', 'Buku', '-', '6', 'Tersedia', '2018-09-14'),
(8, 'K-0008', '339', '978-979-061-779-7', 'PENGANTAR EKONOMI MAKRO', 'Mainkiw, N. Gregory', 'Mainkiw, N. Gregory', '-', 'Sungkono, Chriswan', 'Jakarta', 'Salemba Empat', 2018, '5b9bdf5c39f73.jpeg', 2, 2, 'Makro Ekonomi', 'EKONOMI', 'Buku', '-', '7', 'Tersedia', '2018-09-14'),
(9, 'K-0009', '304', '978-979-061-515-1', 'PERILAKU ORGANISASI', 'Robbins, Stephen P.', 'Robbins, Stephen P.', '-', 'Saraswati, Ratna', 'Jakarta', 'Salemba Empat', 2017, '5b9bdf91c802b.jpg', 2, 2, 'Perilaku Organisasi', 'EKONOMI', 'Buku', '6', '16', 'Tersedia', '2018-09-14'),
(10, 'K-0010', '658.3', '979-526-022-7', 'MANAJEMEN SUMBER DAYA MANUSIA: SUATU PENDEKATAN MAKRO', 'Barthos, Basir', 'Barthos, Basir', '-', '-', 'Jakarta', 'Bumi Aksara', 2012, '5b9bdebff4220.jpg', 13, 13, 'MSDM', 'MANAJEMEN', 'Buku', '9', '1', 'Tersedia', '2018-09-14'),
(11, 'K-0011', '658.5', '978-979-061-773-5', 'MANAJEMEN OPERASI: KONSEP DAN APLIKASI', 'Martono, Ricky Virona', 'Martono, Ricky Virona', '-', '-', 'Jakarta', 'Salemba Empat', 2014, '5b9c605c78ca4.jpg', 2, 2, 'Buku Manajemen operasi', 'MANAJEMEN', 'Buku', '-', '-', 'Tersedia', '2018-09-15'),
(12, 'K-0012', '658.3', '978-979-769-917-8', 'MANAJEMEN SUMBER DAYA MANUSIA: TEORI &amp; PRAKTIK', 'Kasmir', '-', '-', '-', 'Jakarta', 'Rajawali Pers', 2016, '5b9c6278a6d5b.jpg', 2, 2, 'MSDM', 'MANAJEMEN', 'Buku', '-', '1', 'Tersedia', '2018-09-15'),
(13, 'K-0013', '658.81', '978-602-9324-72-3', 'MANAJEMEN PEMASARAN JASA', 'Sunyoto, Danang', 'Susanti, Fathonah Eka', 'Admojo, Tri', '-', 'Yogyakarta', 'CAPS', 2015, '5b9c65e01618c.jpg', 1, 1, 'Manajemen Pemasaran Jasa', 'MANAJEMEN', 'Buku', '1', '-', 'Tersedia', '2018-09-15'),
(14, 'K-0014', '337', '978-979-061-468-0', 'EKONOMI INTERNASIONAL; BUKU 2', 'Salvatore, Dominick', '-', '-', 'Hartanto, Romi Bhakti', 'Jakarta', 'Salemba Empat', 2014, '5b9c67887f064.jpg', 2, 2, 'Ekonomi Internasional', 'EKONOMI', 'Buku', '-', '9', 'Tersedia', '2018-09-15'),
(15, 'K-0015', '332.1', '978-979-769-467-8', 'MANAJEMEN PERBANKAN', 'Kasmir', '-', '-', '-', 'Jakarta', 'Rajawali Pers', 2012, '5b9c6863f194c.jpg', 8, 8, 'Manajemen Perbankan', 'MANAJEMEN', 'Buku', '-', 'Revisi', 'Tersedia', '2018-09-15'),
(16, 'K-0016', '658.8', '978-979-061-741-4', 'MANAJEMEN RESIKI: PRINSIP, PENERAPAN DAN PENELITIAN', 'Rustam, Bambang Rianto', '-', '-', '-', 'Jakarta', 'Salemba Empat', 2018, '5b9c69696387d.jpg', 2, 2, 'Manajemen Resiko', 'MANAJEMEN', 'Buku', '2', '-', 'Tersedia', '2018-09-15'),
(17, 'K-0017', '658.81', '978-979-29-5829-4', 'MANAJEMEN PEMASARAN: TEORI &amp; IMPLEMENTASI', 'Sudaryono', '-', 'Sigit', '-', 'Yogyakarta', 'ANDI', 2016, '5b9c6afda66e1.jpg', 2, 2, 'Manajemen Pemasaran', 'MANAJEMEN', 'Buku', '-', '1', 'Tersedia', '2018-09-15'),
(18, 'K-0018', '658.83', '978-602-031-921-6', 'RISET PEMASARAN', 'Rangkuti, Freddy', '-', '-', '-', 'Jakarta', 'Gramedia', 2015, '5b9c6bfcda61d.jpg', 3, 3, 'Riset Pemasaran', 'MANAJEMEN', 'Buku', '12', '-', 'Tersedia', '2018-09-15'),
(19, 'K-0019', '658.81', '979-683-173-2', 'MANAJEMEN PEMASARAN JASA', 'Lovelock, Christoper', 'Wright, Lauren K.', 'Samosir, Marianto', 'Widyantoro, Agus', 'Jakarta', 'Indeks', 2007, '5b9c6e4c2d158.jpg', 2, 2, 'Manajemen Pemasaran', 'MANAJEMEN', 'Buku', '2', '-', 'Tersedia', '2018-09-15'),
(20, 'K-0020', '658.401', '978-979-061-693-6', 'MANAJEMEN STRATEGIK: SUATU PENDEKATAN KEUNGGULAN BERSAING- KOSEP', 'David, Fred R.', 'David, Forest R.', 'Halim, Dedy A.', 'Puspasari, Novita', 'Jakarta', 'Salemba Empat', 2017, '5b9c7061bc99e.jpg', 2, 2, 'Manajemen Strategik', 'MANAJEMEN', 'Buku', '-', '15', 'Tersedia', '2018-09-15'),
(21, 'K-0021', '658.81', '979-421-115-x', 'MANAJEMEN PEMASARAN', 'Assauri, Sofjan', '-', '-', '-', 'Jakarta', 'Rajawali Pers', 2014, '5b9c723a90005.jpg', 3, 3, 'Manajemen Pemasaran', 'MANAJEMEN', 'Buku', '13', '1', 'Tersedia', '2018-09-15'),
(22, 'K-0022', '338.5', '978-979-061-766-7', 'EKONOMI ( BUKU 1: MAKRO )', 'Parkin, Michael', '-', 'Halim, Dedy A.', '-', 'Jakarta', 'Salemba Empat', 2017, '5b9c7380ecda0.jpg', 2, 2, 'Ekonomi Makro', 'EKONOMI', 'Buku', '-', '11', 'Tersedia', '2018-09-15'),
(23, 'K-0023', '658.87', '978-979-061-538-0', 'MANAJEMEN RITEL: STRATEGI DAN IMPLEMENTASI OPERASIONAL BISNIS RITEL MODERN DI INDONESIA', 'Utami, Christina Whidya', '-', 'Suharsi, Ema Sri', '-', 'Jakarta', 'Salemba Empat', 2017, '5b9c74d936e3a.jpg', 2, 2, 'Manajemen Ritel', 'MANAJEMEN', 'Buku', '-', '3', 'Tersedia', '2018-09-15'),
(24, 'K-0024', '658.3', '978-979-061-533-5', 'MANAJEMEN SUMBER DAYA MANUSIA: HUMAN RESOURCES MANAGEMENT', 'Dessler, Gary', '-', 'Masykur, Muhammad', 'Angelica, Diana', 'Jakarta', 'Salemba Empat', 2017, '5b9c7b6891e17.jpg', 1, 1, 'MSDM', 'MANAJEMEN', 'Buku', '4', '14', 'Tersedia', '2018-09-15'),
(25, 'K-0025', '338.5', '978-602-0946-07-8', 'EKONOMI MANAJERIAL &amp; STRATEGI BISNIS', 'Mubarok, E. Saefuddin', '-', '-', '-', 'Jakarta', 'In Media', 2015, '5b9c7d0228904.jpg', 1, 1, 'Ekonomi Manajerial', 'EKONOMI', 'Buku', '-', '-', 'Tersedia', '2018-09-15'),
(26, 'K-0026', '658.31', '978-602-289-240-3', 'PENGEMBANGAN MANAJEMEN: MEMPERSIAPKAN DAN MENGEMBANGKAN CALON DAN MANAJER YANG EFEKTIF', 'Kaswan', '-', '-', '-', 'Bandung', 'Alfabeta', 2016, '5b9c7e4a79050.jpg', 2, 2, 'Pengembangan Manajemen', 'MANAJEMEN', 'Buku', '-', '-', 'Tersedia', '2018-09-15'),
(27, 'K-0027', '658', '979-562-704-3', 'PENGANTAR MANAJEMEN', 'Siswanto', 'Siswanto', '-', '-', 'Jakarta', 'Bumi Aksara', 2016, '5b9c81a4d0d09.jpg', 1, 1, 'Pengantar Manajemen', 'MANAJEMEN', 'Buku', '12', '-', 'Tersedia', '2018-09-15'),
(28, 'K-0028', '331.11', '978-979-769-610-8', 'EKONOMI SUMBER DAYA MANUSIA DALAM PERSPEKTIF PEMBANGUNAN', 'Mulyadi', '-', '-', '-', 'Jakarta', 'Rajawali Pers', 2014, '5b9c807c137b9.png', 1, 1, 'Ekonomi Sumber Daya Manusia', 'EKONOMI', 'Buku', '5', 'Revisi', 'Tersedia', '2018-09-15'),
(29, 'K-0029', '658.81', '978-979-29-4417-4', 'PEMASARAN JASA: PRINSIP, PENERAPAN , PENELITIAN', 'Tjiptono, Fandy', '-', '-', '-', 'Yogyakarta', 'ANDI', 2014, '5b9c83474c6fd.jpg', 1, 1, 'Pemasaran Jasa', 'MANAJEMEN', 'Buku', '-', '1', 'Tersedia', '2018-09-15'),
(30, 'K-0030', '658.3', '978-602-277-724-3', 'MANAJEMEN SUMBER DAYA MANUSIA: UNTUK MAHASISWA &amp; UMUM', 'Supomo, R.', 'Nurhayati, Eti', 'Malyani, Lia', '-', 'Bandung', 'Yrama Widya', 2018, '1', 1, 1, 'MSDM', 'MANAJEMEN', 'Buku', '1', '-', 'Tersedia', '2018-09-16'),
(31, 'K-0031', '658.15', '978-979-010-504-1', 'MANAJEMEN KEUANGAN BERBASIS BALANCED SCORECARD: PENDEKATAN TEORI, KASUS DAN RISET BISNIS', 'Harmono', '-', 'Rachmatika, Rini', '-', 'Jakarta', 'Bumi Aksara', 2015, '1', 1, 1, 'Manajemen Keuangan', 'MANAJEMEN', 'Buku', '4', '-', 'Tersedia', '2018-09-16'),
(32, 'K-0032', '658.3', '978-602-229-395-8', 'MANAJEMEN PEMBANGUNAN SUMBER DAYA MANUSIA', 'Widodo, Suparno Eko', '-', '-', '-', 'Yogyakarta', 'Pustaka Pelajar', 2015, '1', 1, 1, 'Manajemen Pembangunan Manusia', 'MANAJEMEN', 'Buku', '2', '-', 'Tersedia', '2018-09-16'),
(33, 'K-0033', '658.401', '979-731-098-1', 'MANAJEMEN STRATEGIS', 'Hunger, J. David', 'Wheelen, Thomas L.', '-', 'Agung, Julianto', 'Yogyakarta', 'ANDI', 2003, '1', 1, 1, 'Manajemen Strategis', 'Manajemen', 'Buku', '-', '2', 'Tersedia', '2018-09-16'),
(34, 'K-0034', '658.383', '979-421-369-1', 'MANAJEMEN TRANSPORTASI', 'Salim, Abbas H. A.', '-', '-', '-', 'Jakarta', 'Rajawali Pers', 2013, '1', 1, 1, 'Manajemen Transportasi', 'MANAJEMEN', 'Buku', '11', '1', 'Tersedia', '2018-09-16'),
(35, 'K-0035', '658.401', '978-979-769-471-5', 'STRATEGIC MARKETING: SUSTAINING LIFETIME CUSTOMER VALUE', 'Assauri, Sofjan', '-', '-', '-', 'Jakarta', 'Rajawali Pers', 2012, '1', 1, 1, 'Strategi Pemasaran', 'MANAJEMEN', 'Buku', '1', '1', 'Tersedia', '2018-09-16'),
(36, 'K-0036', '338.5', '978-979-769-483-8', 'EKONOMI MANAJERIAL DENGAN PENDEKATAN MATEMATIS', 'Tasman, Aulia', 'Aima, H. M. Havidz', 'Nugroho, Arissetyanto', '-', 'Jakarta', 'Rajawali Pers', 2013, '1', 1, 1, 'Ekonomi Manajerial', 'EKONOMI', 'Buku', '2', 'Revisi', 'Tersedia', '2018-09-16'),
(37, 'K-0037', '658.15', '978-979-1486-93-4', 'PENGANTAR MANAJEMEN KEUANGAN', 'Kasmir', '-', '-', '-', 'Jakarta', 'Kencana', 2013, '1', 1, 1, 'Manajemen Keuangan', 'MANAJEMEN', 'Buku', '3', '1', 'Tersedia', '2018-09-16'),
(38, 'K-0038', '658', '979-3465-75-1', 'PENGANTAR MANAJEMEN', 'Sule, Ernie Tisnawati', 'Saefullah, Kurniawan', '-', '-', 'Jakarta', 'Kencana', 2015, '1', 1, 1, 'Pengantar Manajemen', 'MANAJEMEN', 'Buku', '9', '1', 'Tersedia', '2018-09-16'),
(39, 'K-0039', '338.9', '979-3925-37-x', 'EKONOMI PEMBANGUNAN: PROSES, MASALAH, DAN DASAR KEBIJAKAN', 'Sukirno, Sadono', '-', '-', '-', 'Jakarta', 'Kencana', 2017, '1', 1, 1, 'Ekonomi Pembangunan', 'EKONOMI', 'Buku', '8', '2', 'Tersedia', '2018-09-16'),
(40, 'K-0040', '658.15', '978-979-683-733-5', 'MANAJEMEN KEUANGAN', 'Keown, Arthur J.', 'Martin, Jhon D.', '-', '-', 'Jakarta', 'Indeks', 2010, '1', 1, 1, 'Manajemen Keuangan', 'MANAJEMEN', 'Buku', '1', '10', 'Tersedia', '2018-09-16'),
(41, 'K-0041', '658.81', '979-683-818-4', 'MANAJEMEN PEMASARAN', 'Kotler, Philip', 'Keller, Kevin Lane', 'Sarwaji, Bambang', 'Molan, Benyamin', 'Jakarta', 'Indeks', 2007, '1', 1, 1, 'Manajemen Pemasaran', 'MANAJEMEN', 'Buku', '1', '12', 'Tersedia', '2018-09-16'),
(42, 'K-0042', '310', '978-979-769-877-5', 'PENGANTAR STATISTIK INFERENSIAL', 'Gunawan, Imam', '-', '-', '-', 'Jakarta', 'Rajawali Pers', 2016, '1', 1, 1, 'Statistik Inferensial', 'STATISTIK', 'Buku', '1', '1', 'Tersedia', '2018-09-16'),
(43, 'K-0043', '310', '979-704-015-1', 'APLIKASI ANALISIS MULTIVARIATE DENGAN PROGRAM IBM SPSS 23', 'Ghozali, H. Imam', '-', '-', '-', 'Semarang', 'UNDIP', 2016, '1', 1, 1, 'SPSS', 'STATISTIK', 'Buku', '8', '8', 'Tersedia', '2018-09-16'),
(44, 'K-0044', '310', '978-979-061-669-8', 'STRUCTURAL EQUATION MODELING (SEM) BERBASIS KOVARIAN DENGAN LISREL DAN AMOS UNTUK RISET SKRIPSI, TESIS, DAN DISERTASI', 'Narimawati, Umi', 'Sarwono, Jonathan', 'Halim, Dedy A.', '-', 'Jakarta', 'Salemba Empat', 2017, '1', 2, 2, 'SEM', 'STATISTIK', 'Buku', '-', '-', 'Tersedia', '2018-09-16'),
(45, 'K-0045', '764.7364237', 'dfd', 'DFDS', 'dfs', 'dfs', 'dsf', 'df', 'dsf', 'dfs', 2014, '1', 1, 1, 'sdfds', 'MSDM', 'Buku', 'sdfd', 'dsf', 'Tersedia', '2018-09-19'),
(46, 'K-0046', '343.4348923', 'fgf', 'DFD', 'dfd', 'gfgf', 'dfd', 'fg', 'gfg', 'gf', 2018, '1', 1, 1, 'df', 'sd', 'Buku', 'gf', 'fd', 'Tersedia', '2018-09-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkunjungan`
--

CREATE TABLE `tbkunjungan` (
  `idkunjungan` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `noidentitas` varchar(125) NOT NULL,
  `instansi` varchar(50) NOT NULL,
  `status` varchar(25) DEFAULT NULL,
  `waktu_kunjung` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbkunjungan`
--

INSERT INTO `tbkunjungan` (`idkunjungan`, `nama`, `noidentitas`, `instansi`, `status`, `waktu_kunjung`) VALUES
(8, 'I Wayan Gunung', '80902932139', 'Suzuku Finace', 'Non Anggota', '2018-08-05 16:00:00'),
(9, 'Sunyahmi', '12389128', 'UNDIKSHA', 'Non Anggota', '2018-08-05 16:00:00'),
(12, 'I Wayan Gunung', '80902932139', 'Suzuku Finace', 'Non Anggota', '2018-08-05 16:00:00'),
(13, 'Made Rupanajaya', '14101579', 'STIKI INDONESIA', 'Anggota', '2018-08-05 16:00:00'),
(14, 'I Wayang Pasek  ', '14202226', 'BANK MANDIRI Buleleng', 'Anggota', '2018-08-13 22:54:15'),
(15, 'wayan', '1239891809', 'BPR INDRA', 'Non Anggota', '2018-08-14 03:07:37'),
(16, '', '2132139898', '', 'Non Anggota', '2018-08-14 03:07:58'),
(17, 'Marion Jola', '920379182', 'stiki', 'Non Anggota', '2018-09-10 05:02:17'),
(18, 'Ranggg', '34793', 'Dfjgkdfg', 'Anggota', '2018-09-10 05:03:04'),
(19, 'Made Rupanajaya', '', '', 'Non Anggota', '2018-09-17 04:05:35'),
(20, 'I Wayan Gunung', '92348923', 'stikom', 'Non Anggota', '2018-09-29 03:42:26'),
(21, '', '14101579', '', 'Non Anggota', '2018-09-29 03:42:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpinjaman`
--

CREATE TABLE `tbpinjaman` (
  `id_pinjaman` int(11) NOT NULL,
  `kode_anggota` varchar(12) DEFAULT NULL,
  `kode_koleksi` varchar(12) DEFAULT NULL,
  `jml_pinjam` int(5) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpinjaman`
--

INSERT INTO `tbpinjaman` (`id_pinjaman`, `kode_anggota`, `kode_koleksi`, `jml_pinjam`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
(14, '14101579', 'SM.0001', 3, '2018-07-30', '2018-07-28', 'Pinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(125) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`iduser`, `username`, `password`, `email`, `level`) VALUES
(2, 'maderupanajaya', '$2y$10$150Q8/Hdr9I0M5.urvcBw.4e8Odn3nkVDEcq8VgayiFpYOYagyEvO', 'maderupanajaya@gmail.com', 'Web Master'),
(4, 'admin', '$2y$10$m3a0DJVpcLllvrFlBBpMSuFDcOK0trCiTv2HUiLPwKLde3SwoZqTy', 'admin@gamil.com', 'Pegawai Perpustakaan'),
(5, 'ranggagalih', '$2y$10$holNQtNHJr0alTAQW19axulmQj81CUzLR7t7dTCbreozDCnLH3mo6', 'rangga@mail.com', 'Pegawai Perpustakaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbusulan`
--

CREATE TABLE `tbusulan` (
  `idusulan` int(11) NOT NULL,
  `noanggota` varchar(25) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `pengarang` varchar(225) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_usulan` date NOT NULL,
  `status_usulan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbusulan`
--

INSERT INTO `tbusulan` (`idusulan`, `noanggota`, `judul`, `pengarang`, `keterangan`, `tgl_usulan`, `status_usulan`) VALUES
(3, '14101579', 'Manajemen Statistika Tenologi', 'Syarifudin Wawan', 'Tahun terbit 2016', '2018-08-08', 'Disetujui'),
(4, '16101578', 'Standar Akuntansi Keuangan 2018', 'Ikatan Akuntansi Indonesia', 'Tahun Terbit : 2018', '2018-08-08', '-'),
(5, '14101579', 'Manajemen Operasiaonal', 'Dr. Wirawan B. Ilyas, M.Si., M.H., CPA.', 'tahun 2018', '2018-08-14', 'Disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_temp`
--

CREATE TABLE `tb_temp` (
  `id_temp` int(11) NOT NULL,
  `no_transaksi` varchar(125) DEFAULT NULL,
  `id_koleksi` varchar(11) DEFAULT NULL,
  `kode_koleksi` varchar(25) DEFAULT NULL,
  `id_anggota` varchar(25) DEFAULT NULL,
  `id_sesion` varchar(25) DEFAULT NULL,
  `jumlah` int(12) DEFAULT NULL,
  `tgl_pinjaman` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status_trans` varchar(12) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_temp`
--

INSERT INTO `tb_temp` (`id_temp`, `no_transaksi`, `id_koleksi`, `kode_koleksi`, `id_anggota`, `id_sesion`, `jumlah`, `tgl_pinjaman`, `tgl_kembali`, `status_trans`, `tgl_transaksi`) VALUES
(221, 'P0001', 'K-0001', '174.4', '5', '17011154', 1, '2018-09-17', '2018-09-24', 'Dikembalikan', '2018-09-17'),
(222, 'P0002', 'K-0003', '657.42', '5', '17011154', 1, '2018-09-17', '2018-09-24', 'Dikembalikan', '2018-09-17'),
(228, NULL, 'K-0002', '658.5', '5', '17011154', 1, '2018-09-18', NULL, '', NULL),
(229, NULL, 'K-0010', '658.3', '5', '17011154', 1, '2018-09-18', NULL, '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbanggota`
--
ALTER TABLE `tbanggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indeks untuk tabel `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `tbkeuangan`
--
ALTER TABLE `tbkeuangan`
  ADD PRIMARY KEY (`idcash`);

--
-- Indeks untuk tabel `tbkoleksi`
--
ALTER TABLE `tbkoleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbkunjungan`
--
ALTER TABLE `tbkunjungan`
  ADD PRIMARY KEY (`idkunjungan`);

--
-- Indeks untuk tabel `tbpinjaman`
--
ALTER TABLE `tbpinjaman`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indeks untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `tbusulan`
--
ALTER TABLE `tbusulan`
  ADD PRIMARY KEY (`idusulan`);

--
-- Indeks untuk tabel `tb_temp`
--
ALTER TABLE `tb_temp`
  ADD PRIMARY KEY (`id_temp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbanggota`
--
ALTER TABLE `tbanggota`
  MODIFY `idanggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbkategori`
--
ALTER TABLE `tbkategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbkeuangan`
--
ALTER TABLE `tbkeuangan`
  MODIFY `idcash` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbkoleksi`
--
ALTER TABLE `tbkoleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `tbkunjungan`
--
ALTER TABLE `tbkunjungan`
  MODIFY `idkunjungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbpinjaman`
--
ALTER TABLE `tbpinjaman`
  MODIFY `id_pinjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbusulan`
--
ALTER TABLE `tbusulan`
  MODIFY `idusulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_temp`
--
ALTER TABLE `tb_temp`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
