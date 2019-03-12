-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Gegenereerd op: 06 mrt 2019 om 21:12
-- Serverversie: 5.6.17
-- PHP-versie: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `books`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(150) NOT NULL,
  `Author` varchar(150) NOT NULL,
  `PublisherName` varchar(150) NOT NULL,
  `CopyrightYear` year(4) NOT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Gegevens worden geëxporteerd voor tabel `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Author`, `PublisherName`, `CopyrightYear`) VALUES
(9, 'hoi', 'noort', 'saskia noort', 2050),
(2, 'Algebra', 'Almel', 'Chun ', 2009),
(4, 'Algebra', 'Almel', 'Chun Sa', 2007),
(5, 'Algebra', 'Almel', 'Chun Sa', 2007),
(22, 'mr mersiedes', 'stephen king', 'malmberg', 2014),
(23, 'coderen met ome theo', 'theo den blanken', 'malmberg', 2030);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
