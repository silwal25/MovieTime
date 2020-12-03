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
-- Table structure for table `TRENDING`
--

CREATE TABLE `TRENDING` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MOVIE_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TRENDING`
--

INSERT INTO `TRENDING` (`ID`, `NAME`, `IMAGE`, `MOVIE_ID`) VALUES
(1, 'Dunkirk', '/MovieTime/Images/carousel/dunkirk.jpg', 110),
(2, 'Avengers Endgame', '/MovieTime/Images/carousel/avengers-endgame.jpg', 55),
(3, 'The Expandables', '/MovieTime/Images/carousel/expandables.jpg', 111),
(4, 'Inception', '/MovieTime/Images/carousel/inception.jpg', 16),
(5, 'Intersteller', '/MovieTime/Images/carousel/intersteller.jpeg', 34),
(6, 'Dr Strange', '/MovieTime/Images/carousel/drstrange.jpg', 1),
(7, 'The Dark Knight', '/MovieTime/Images/carousel/dark-knight.png', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TRENDING`
--
ALTER TABLE `TRENDING`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TRENDING`
--
ALTER TABLE `TRENDING`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
