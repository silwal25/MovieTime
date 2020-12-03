-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2019 at 04:50 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MovieTime`
--

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `ID` int(255) NOT NULL,
  `FIRSTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LASTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CARDNUMBER` int(255) DEFAULT NULL,
  `CITY` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STATE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ZIP_CODE` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`ID`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `PASSWORD`, `ADDRESS`, `CARDNUMBER`, `CITY`, `STATE`, `ZIP_CODE`) VALUES
(4, 'Lalit', 'Silwal', 'lalitsilwal.2599@gmail.com', '$2y$10$UKLMvADVg08owbGWPbuJteHwfVw0WeR1xbqWb52v/7cp794CYu7I2', 'flat no. 1223 abc colony', NULL, 'Shalimar bagh', 'delhi', 110009),
(5, 'jini', 'thomas', 'jt2711302@gmail.com', '$2y$10$AAZtpPaoWtcINKfJmM/zxOx50fp6zv/ghX2puMLIvluY7qgRJH/MK', 'the dark brown cupboard, west wing', NULL, 'Aslan', 'Narnia', 777),
(6, 'mahima', 'goyal', 'mahima@gmail.com', '$2y$10$Rd/FDb0E6dmHV67ZOeZ48.zSu4CYWURMlA24K8uma2GzZJe21KKEa', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
