-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2016 at 09:35 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facilities`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id_address` int(11) NOT NULL,
  `name_street` varchar(80) NOT NULL,
  `number_street` int(5) NOT NULL,
  `id_city` int(11) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id_address`, `name_street`, `number_street`, `id_city`, `date_deleted`) VALUES
(1, 'Христо Ботев', 15, 1, NULL),
(2, 'Илинден', 12, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id_city` int(11) NOT NULL,
  `name_city` varchar(50) NOT NULL,
  `code_city` int(10) NOT NULL,
  `id_country` int(11) NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id_city`, `name_city`, `code_city`, `id_country`, `data_delete`) VALUES
(1, 'Враца', 3000, 0, NULL),
(2, 'Враца', 3000, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id_country` int(11) NOT NULL,
  `name_country` varchar(80) NOT NULL,
  `post_code` int(10) NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id_country`, `name_country`, `post_code`, `data_delete`) VALUES
(1, 'България', 8000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `id_facility` int(11) NOT NULL,
  `name_facilities` varchar(100) NOT NULL,
  `descripion_facility` text NOT NULL,
  `id_propucer` int(11) NOT NULL,
  `year_product` date NOT NULL,
  `id_service` int(11) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id_facility`, `name_facilities`, `descripion_facility`, `id_propucer`, `year_product`, `id_service`, `date_deleted`) VALUES
(1, 'Dopler L-200', 'For veins', 1, '2016-03-01', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE IF NOT EXISTS `producers` (
  `id_producer` int(11) NOT NULL,
  `name_producer` varchar(100) NOT NULL,
  `id_address` int(11) NOT NULL,
  `id_telephone` int(11) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id_producer`, `name_producer`, `id_address`, `id_telephone`, `date_deleted`) VALUES
(1, 'Samsung', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id_service` int(11) NOT NULL,
  `name_service` varchar(80) NOT NULL,
  `id_addres` int(11) NOT NULL,
  `id_telephone` int(11) NOT NULL,
  `id_technic` int(11) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id_service`, `name_service`, `id_addres`, `id_telephone`, `id_technic`, `date_deleted`) VALUES
(1, 'Миро сървисиз', 2, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tehnics`
--

CREATE TABLE IF NOT EXISTS `tehnics` (
  `id_technic` int(11) NOT NULL,
  `name_technic` varchar(80) NOT NULL,
  `surname_technic` varchar(80) NOT NULL,
  `id_telephone` int(11) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tehnics`
--

INSERT INTO `tehnics` (`id_technic`, `name_technic`, `surname_technic`, `id_telephone`, `date_deleted`) VALUES
(1, 'Иван', 'Иванов', 1, NULL),
(2, 'Мирослав', 'Григоров', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telephones`
--

CREATE TABLE IF NOT EXISTS `telephones` (
  `id_telephone` int(11) NOT NULL,
  `telephone` int(15) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telephones`
--

INSERT INTO `telephones` (`id_telephone`, `telephone`, `date_deleted`) VALUES
(1, 2147483647, NULL),
(2, 2147483647, NULL);

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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id_facility`),
  ADD KEY `id_propucer` (`id_propucer`),
  ADD KEY `id_service` (`id_service`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id_producer`),
  ADD KEY `id_address` (`id_address`),
  ADD KEY `id_telephone` (`id_telephone`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `id_addres` (`id_addres`),
  ADD KEY `id_telephone` (`id_telephone`),
  ADD KEY `id_technic` (`id_technic`);

--
-- Indexes for table `tehnics`
--
ALTER TABLE `tehnics`
  ADD PRIMARY KEY (`id_technic`),
  ADD KEY `id_telephone` (`id_telephone`);

--
-- Indexes for table `telephones`
--
ALTER TABLE `telephones`
  ADD PRIMARY KEY (`id_telephone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id_facility` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id_producer` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tehnics`
--
ALTER TABLE `tehnics`
  MODIFY `id_technic` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `telephones`
--
ALTER TABLE `telephones`
  MODIFY `id_telephone` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
