-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table uts_pemweb.about
CREATE TABLE IF NOT EXISTS `about` (
  `title` char(50) DEFAULT NULL,
  `bio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uts_pemweb.about: ~0 rows (approximately)
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` (`title`, `bio`) VALUES
	('ME?', 'I am a 5th semester student from major Information');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;

-- Dumping structure for table uts_pemweb.album
CREATE TABLE IF NOT EXISTS `album` (
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uts_pemweb.album: ~0 rows (approximately)
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`foto`) VALUES
	('assets/img/contoh.png');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;

-- Dumping structure for table uts_pemweb.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `alamat` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `hp` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uts_pemweb.contact: ~1 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`alamat`, `email`, `hp`) VALUES
	('Benda Timur Street, Tangerang Selatan', 'ari.gunawan@student.upj.ac.id', '(+62) 838 7340 2125');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

-- Dumping structure for table uts_pemweb.home
CREATE TABLE IF NOT EXISTS `home` (
  `title` char(250) DEFAULT NULL,
  `motto` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uts_pemweb.home: ~1 rows (approximately)
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` (`title`, `motto`) VALUES
	('MY JOURNEY', 'ENJOY WITH YOUR STORY UNTIL YOU GOT YOUT DREAM');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;

-- Dumping structure for table uts_pemweb.project
CREATE TABLE IF NOT EXISTS `project` (
  `title` char(50) DEFAULT NULL,
  `pj_foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uts_pemweb.project: ~2 rows (approximately)
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` (`title`, `pj_foto`) VALUES
	('LED', 'assets/img/pj-1-1.jpeg'),
	('SUNSER', 'assets/img/pj-2.jpeg');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
