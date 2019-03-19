-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 07:02 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `advertisename` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `publishername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `advertisename`, `image`, `publishername`) VALUES
(1, 'cocacolareclame', 'cocacola.jpg', 'coca corporation');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Images` varchar(255) NOT NULL,
  `Summary` varchar(255) NOT NULL,
  `Author` varchar(150) NOT NULL,
  `PublisherName` varchar(150) NOT NULL,
  `Publishdate` varchar(255) NOT NULL,
  `Storage` varchar(255) NOT NULL,
  `Sizes` varchar(255) NOT NULL,
  `Gram` varchar(255) NOT NULL,
  `Languages` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Id`, `Title`, `Category`, `Price`, `Images`, `Summary`, `Author`, `PublisherName`, `Publishdate`, `Storage`, `Sizes`, `Gram`, `Languages`) VALUES
(27, 'Kinderboeken', 'Kinderboeken', '$20,00', 'images/thriller.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', '245', '24cm,40cm', '567', 'English'),
(25, 'Computer', 'Computer', '$20,00', 'images/thriller.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', '245', '24cm,40cm', '567', 'English'),
(26, 'Stripboeken', 'Stripboeken', '$20,00', 'images/thriller.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', '245', '24cm,40cm', '567', 'English'),
(28, 'Kunst', 'Kunst', '$20,00', 'images/erotic.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', '245', '24cm,40cm', '567', 'English'),
(29, 'Koken', 'Koken', '$20,00', 'images/erotic.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', '245', '24cm,40cm', '567', 'English'),
(30, 'Natuur', 'Natuur', '$20,00', 'images/erotic.jpg', 'Its a story about a little guy hunting in a big world full of dangerous predators. What he will find on this journey? We might never knowm but for sure it will be a great journey for many to talk about in the future.', 'Carry Slee', 'Book productions inc', '1978', '245', '24cm,40cm', '567', 'English'),
(31, 'Gezondheid', 'Gezondheid', ' City', 'images/biografie.jpg', 'Summary', ' Author', ' PublisherName', ' Publishdate', '0', ' Sizes', '0', 'Language'),
(32, 'Spiritualiteit', 'Spiritualiteit', ' City', 'images/biografie.jpg', 'Summary', ' Author', ' PublisherName', ' Publishdate', '0', ' Sizes', '0', 'Language'),
(33, 'Youngadult', 'Youngadult', ' Price', 'images/biografie.jpg', 'Summary', ' Author', ' PublisherName', ' Publishdate', '0', ' Sizes', '0', 'Language'),
(47, 'Drama', 'Drama', 'test', 'images/fantasy.jpg', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test'),
(45, 'Thriller', 'Thriller', 'gdf', 'images/fantasy.jpg', 'dfg', 'gdfg', 'dfg', 'fdg', 'dfgf', 'dgfd', 'gdfg', 'dg11111111'),
(46, 'Reisgidsen', 'Reisgidsen', 'gdf', 'images/fantasy.jpg', 'dfg', 'gdfg', 'dfg', 'fdg', 'dfgf', 'dgfd', 'gdfg', 'dg11111111'),
(48, 'Fantasy', 'Fantasy', 'sfds', 'images/fantasy.jpg', 'fsdfds', 'fdsfds', 'sfdds', 'fdsf', '546', '456', 'rte', 'tre'),
(49, 'Sporthobby', 'Sporthobby', 'sdgfsdf', 'images/fantasy.jpg', 'sdfsd', 'sdfsd', 'dfssd', 'asdffsd', 'fdsfs', 'fsdf', 'fds', 'sfds');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
