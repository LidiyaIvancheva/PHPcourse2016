-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2016 at 10:06 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flowers`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `date_deleted`) VALUES
(1, 'Bulgaria', NULL),
(2, 'Greece', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE IF NOT EXISTS `flowers` (
  `flower_id` int(11) NOT NULL,
  `flower_bgname` varchar(80) NOT NULL,
  `latin_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `temperature` int(5) NOT NULL,
  `watering_id` int(11) NOT NULL,
  `light_id` int(11) NOT NULL,
  `reproduction_id` int(11) NOT NULL,
  `flower_description` text NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flowers`
--

INSERT INTO `flowers` (`flower_id`, `flower_bgname`, `latin_id`, `type_id`, `country_id`, `temperature`, `watering_id`, `light_id`, `reproduction_id`, `flower_description`, `date_deleted`) VALUES
(1, 'Бяла роза', 1, 1, 1, 20, 1, 1, 1, 'Да не се отглежда близо до лилии', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `latin_names`
--

CREATE TABLE IF NOT EXISTS `latin_names` (
  `latin_id` int(11) NOT NULL,
  `latin_name` varchar(200) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `latin_names`
--

INSERT INTO `latin_names` (`latin_id`, `latin_name`, `date_deleted`) VALUES
(1, 'rosa bella', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lights`
--

CREATE TABLE IF NOT EXISTS `lights` (
  `light_id` int(11) NOT NULL,
  `light_name` varchar(80) NOT NULL,
  `light_description` text NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lights`
--

INSERT INTO `lights` (`light_id`, `light_name`, `light_description`, `data_delete`) VALUES
(1, 'Sunny', 'Put flower on lights of sun', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reproductions`
--

CREATE TABLE IF NOT EXISTS `reproductions` (
  `reproduction_id` int(11) NOT NULL,
  `reproduction_name` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reproductions`
--

INSERT INTO `reproductions` (`reproduction_id`, `reproduction_name`, `description`, `data_delete`) VALUES
(1, 'root', 'Grow from root of flower', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `date_deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`, `date_deleted`) VALUES
(1, 'Orchidaceae', NULL),
(2, 'Liliaceae', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `waterings`
--

CREATE TABLE IF NOT EXISTS `waterings` (
  `watering_id` int(11) NOT NULL,
  `watering_name` varchar(80) NOT NULL,
  `watering_description` text NOT NULL,
  `data_delete` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `waterings`
--

INSERT INTO `waterings` (`watering_id`, `watering_name`, `watering_description`, `data_delete`) VALUES
(1, 'Dropping', 'Put 1-2 drops in roots of flower', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`flower_id`),
  ADD KEY `latin_id` (`latin_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `watering_id` (`watering_id`),
  ADD KEY `light_id` (`light_id`),
  ADD KEY `reproduction_id` (`reproduction_id`);

--
-- Indexes for table `latin_names`
--
ALTER TABLE `latin_names`
  ADD PRIMARY KEY (`latin_id`);

--
-- Indexes for table `lights`
--
ALTER TABLE `lights`
  ADD PRIMARY KEY (`light_id`);

--
-- Indexes for table `reproductions`
--
ALTER TABLE `reproductions`
  ADD PRIMARY KEY (`reproduction_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `waterings`
--
ALTER TABLE `waterings`
  ADD PRIMARY KEY (`watering_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `flower_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `latin_names`
--
ALTER TABLE `latin_names`
  MODIFY `latin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lights`
--
ALTER TABLE `lights`
  MODIFY `light_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reproductions`
--
ALTER TABLE `reproductions`
  MODIFY `reproduction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `waterings`
--
ALTER TABLE `waterings`
  MODIFY `watering_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
