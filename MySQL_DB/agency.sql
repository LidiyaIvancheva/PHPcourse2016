-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2016 at 10:38 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id_city` int(11) NOT NULL,
  `name_city` varchar(80) NOT NULL,
  `code_city` int(11) NOT NULL,
  `post_city` int(10) NOT NULL,
  `id_country` int(11) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id_city`, `name_city`, `code_city`, `post_city`, `id_country`, `date_deleted`) VALUES
(1, 'Враца', 92, 3000, 1, NULL),
(2, 'Атина', 3021, 800, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id_country` int(11) NOT NULL,
  `name_country` varchar(80) NOT NULL,
  `code_country` int(10) NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id_country`, `name_country`, `code_country`, `data_delete`) VALUES
(1, 'България', 359, NULL),
(2, 'Гърция', 30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `durations`
--

CREATE TABLE IF NOT EXISTS `durations` (
  `id_duration` int(11) NOT NULL,
  `name_duration` varchar(80) NOT NULL,
  `nights` int(10) NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `durations`
--

INSERT INTO `durations` (`id_duration`, `name_duration`, `nights`, `data_delete`) VALUES
(1, 'уикенд', 2, NULL),
(2, 'стандарт', 5, NULL),
(3, 'дълъг уикенд', 3, NULL),
(4, 'стандарт', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
  `id_hotels` int(11) NOT NULL,
  `name_hotel` varchar(100) NOT NULL,
  `description_hotel` text NOT NULL,
  `id_stars` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id_hotels`, `name_hotel`, `description_hotel`, `id_stars`, `id_city`, `date_deleted`) VALUES
(1, 'Хемус', 'Прекрасен хотел както за бизнес, така и за удоволствия', 3, 1, NULL),
(2, 'Атина Палаз', 'Традиционна гръцка кухня съчетана с модерни условия за почивка', 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id_offer` int(11) NOT NULL,
  `id_name` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `id_duration` int(11) NOT NULL,
  `id_package` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_period` int(11) NOT NULL,
  `id_transport` int(11) NOT NULL,
  `date_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id_offer`, `id_name`, `id_hotel`, `id_city`, `id_duration`, `id_package`, `price`, `id_period`, `id_transport`, `date_delete`) VALUES
(1, 1, 1, 1, 1, 1, 200, 1, 1, NULL),
(2, 2, 2, 2, 2, 2, 800, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers_name`
--

CREATE TABLE IF NOT EXISTS `offers_name` (
  `id_name` int(11) NOT NULL,
  `name_name` varchar(50) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offers_name`
--

INSERT INTO `offers_name` (`id_name`, `name_name`, `date_deleted`) VALUES
(1, 'Почивка в', NULL),
(2, 'Екскурзия до', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id_packages` int(11) NOT NULL,
  `name_package` varchar(50) NOT NULL,
  `adults` int(5) NOT NULL,
  `child` int(5) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id_packages`, `name_package`, `adults`, `child`, `date_deleted`) VALUES
(1, 'семейство1', 2, 1, NULL),
(2, 'семейство2', 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `price_periods`
--

CREATE TABLE IF NOT EXISTS `price_periods` (
  `id_periods` int(11) NOT NULL,
  `name_periods` varchar(50) NOT NULL,
  `discount` int(5) NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_periods`
--

INSERT INTO `price_periods` (`id_periods`, `name_periods`, `discount`, `data_delete`) VALUES
(1, 'Коледа', 20, NULL),
(2, 'Нова година', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE IF NOT EXISTS `stars` (
  `id_star` int(11) NOT NULL,
  `star` int(5) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id_star`, `star`, `date_deleted`) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transports`
--

CREATE TABLE IF NOT EXISTS `transports` (
  `id_transport` int(11) NOT NULL,
  `name_transport` varchar(60) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transports`
--

INSERT INTO `transports` (`id_transport`, `name_transport`, `date_deleted`) VALUES
(1, 'личен', NULL),
(2, 'служебен - на агенцията', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_city`),
  ADD KEY `id_country` (`id_country`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `durations`
--
ALTER TABLE `durations`
  ADD PRIMARY KEY (`id_duration`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id_hotels`),
  ADD KEY `id_stars` (`id_stars`),
  ADD KEY `id_city` (`id_city`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id_offer`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_city` (`id_city`),
  ADD KEY `id_duration` (`id_duration`),
  ADD KEY `id_package` (`id_package`),
  ADD KEY `price` (`price`),
  ADD KEY `id_period` (`id_period`),
  ADD KEY `id_transport` (`id_transport`);

--
-- Indexes for table `offers_name`
--
ALTER TABLE `offers_name`
  ADD PRIMARY KEY (`id_name`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id_packages`);

--
-- Indexes for table `price_periods`
--
ALTER TABLE `price_periods`
  ADD PRIMARY KEY (`id_periods`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id_star`);

--
-- Indexes for table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id_transport`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id_duration` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id_hotels` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id_offer` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `offers_name`
--
ALTER TABLE `offers_name`
  MODIFY `id_name` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id_packages` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `price_periods`
--
ALTER TABLE `price_periods`
  MODIFY `id_periods` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id_star` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transports`
--
ALTER TABLE `transports`
  MODIFY `id_transport` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
