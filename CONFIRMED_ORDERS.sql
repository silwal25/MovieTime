-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2019 at 04:49 AM
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
-- Table structure for table `CONFIRMED_ORDERS`
--

CREATE TABLE `CONFIRMED_ORDERS` (
  `ORDER_ID` int(255) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USER_ID` int(255) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CONFIRMED_ORDERS`
--

INSERT INTO `CONFIRMED_ORDERS` (`ORDER_ID`, `TITLE`, `USER_ID`, `DATE`) VALUES
(5, 'John Wick Chapter 1', 4, '2019-11-19'),
(6, 'John Wick Chapter 1', 4, '2019-11-19'),
(7, 'John Wick Chapter 1', 4, '2019-11-19'),
(8, 'John Wick Chapter 1', 4, '2019-11-19'),
(9, 'John Wick Chapter 1', 4, '2019-11-19'),
(10, 'Dunkirk', 4, '2019-11-19'),
(11, 'John Wick Chapter 1', 4, '2019-11-19'),
(12, 'Dunkirk', 4, '2019-11-19'),
(13, 'John Wick Chapter 1', 4, '2019-11-19'),
(14, 'Dunkirk', 4, '2019-11-19'),
(15, 'John Wick Chapter 1', 4, '2019-11-19'),
(16, 'Dunkirk', 4, '2019-11-19'),
(17, 'John Wick Chapter 1', 4, '2019-11-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CONFIRMED_ORDERS`
--
ALTER TABLE `CONFIRMED_ORDERS`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CONFIRMED_ORDERS`
--
ALTER TABLE `CONFIRMED_ORDERS`
  MODIFY `ORDER_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
