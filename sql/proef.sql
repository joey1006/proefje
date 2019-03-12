-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 12 mrt 2019 om 11:36
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proef`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `advertisename` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `publishername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `books`
--

CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Summary` varchar(255) NOT NULL,
  `Author` varchar(150) NOT NULL,
  `PublisherName` varchar(150) NOT NULL,
  `Publishdate` varchar(255) NOT NULL,
  `Storage` int(11) NOT NULL,
  `Sizes` varchar(255) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Language` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `books`
--

INSERT INTO `books` (`Id`, `Title`, `Category`, `Price`, `Image`, `Summary`, `Author`, `PublisherName`, `Publishdate`, `Storage`, `Sizes`, `Weight`, `Language`) VALUES
(27, 'The hunt', 'Thriller', '$20,00', 'images/pizza.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', 245, '24cm,40cm', 567, 'English'),
(25, 'The hunt', 'Thriller', '$20,00', 'images/pizza.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', 245, '24cm,40cm', 567, 'English'),
(26, 'The hunt', 'Thriller', '$20,00', 'images/pizza.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', 245, '24cm,40cm', 567, 'English'),
(28, 'The hunt', 'Thriller', '$20,00', 'images/pizza.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', 245, '24cm,40cm', 567, 'English'),
(29, 'The hunt', 'Thriller', '$20,00', 'images/pizza.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', 245, '24cm,40cm', 567, 'English'),
(30, 'The hunt', 'Thriller', '$20,00', 'images/pizza.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', 245, '24cm,40cm', 567, 'English');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `books`
--
ALTER TABLE `books`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
