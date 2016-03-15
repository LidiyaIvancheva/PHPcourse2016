-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2016 at 11:12 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id_address` int(11) NOT NULL,
  `name_street` varchar(80) NOT NULL,
  `street_number` int(5) NOT NULL,
  `block_number` int(5) NOT NULL,
  `stage` int(5) NOT NULL,
  `apartment_number` int(5) NOT NULL,
  `id_city` int(11) NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id_address`, `name_street`, `street_number`, `block_number`, `stage`, `apartment_number`, `id_city`, `data_delete`) VALUES
(1, 'Христо Ботев', 115, 5, 5, 35, 1, NULL),
(2, 'Христанчо Матов', 25, 0, 0, 0, 1, NULL),
(3, 'Иван Вазов', 5, 1, 5, 15, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id_city` int(11) NOT NULL,
  `name_city` varchar(80) NOT NULL,
  `id_country` int(11) NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id_city`, `name_city`, `id_country`, `data_delete`) VALUES
(1, 'Враца', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(11) NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `number` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `id_workplace` int(11) NOT NULL,
  `id_address` int(11) NOT NULL,
  `date_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `first_name`, `last_name`, `number`, `birthday`, `id_workplace`, `id_address`, `date_delete`) VALUES
(2, 'Мария', 'Илиева', 2147483647, '2016-03-08', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id_country` int(11) NOT NULL,
  `name_country` varchar(80) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id_country`, `name_country`, `date_deleted`) VALUES
(1, 'България', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workplaces`
--

CREATE TABLE IF NOT EXISTS `workplaces` (
  `id_workplace` int(11) NOT NULL,
  `name_workplace` varchar(80) NOT NULL,
  `id_addres` int(11) NOT NULL,
  `telephone` int(6) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workplaces`
--

INSERT INTO `workplaces` (`id_workplace`, `name_workplace`, `id_addres`, `telephone`, `date_deleted`) VALUES
(1, 'Бони М', 1, 888888888, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `id_city` (`id_city`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_city`),
  ADD KEY `id_country` (`id_country`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_workplace` (`id_workplace`),
  ADD KEY `id_address` (`id_address`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `workplaces`
--
ALTER TABLE `workplaces`
  ADD PRIMARY KEY (`id_workplace`),
  ADD KEY `id_addres` (`id_addres`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `workplaces`
--
ALTER TABLE `workplaces`
  MODIFY `id_workplace` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
