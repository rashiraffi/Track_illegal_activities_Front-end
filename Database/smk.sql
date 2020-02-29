-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 29, 2020 at 11:06 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smk`
--

-- --------------------------------------------------------

--
-- Table structure for table `Smk_Record`
--

CREATE TABLE `Smk_Record` (
  `id` int(5) NOT NULL,
  `name` varchar(256) NOT NULL,
  `loc` varchar(256) DEFAULT NULL,
  `percentage` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Smk_Record`
--

INSERT INTO `Smk_Record` (`id`, `name`, `loc`, `percentage`, `datetime`) VALUES
(4, 'smoking2020-02-2000-44-01.jpg', 'Bus_Stand_01', 51, '2020-02-20 00:44:01'),
(18, 'smoking2020-02-2005-14-22.jpg', 'Bus_Stand_09', 85, '2020-02-20 05:14:22'),
(52, 'smoking2020-02-2006-35-38.jpg', 'Hall_02', 59, '2020-02-20 06:35:38'),
(53, 'smoking2020-02-19 16-11-12.jpg', 'Bus_Stand_02', 78, '2020-02-29 22:27:19'),
(54, 'smoking2020-02-19 20-44-15.jpg', 'Hall_05', 59, '2020-02-29 22:27:19'),
(67, 'smoking2020-02-19 20-44-50.jpg', 'Bus_Stand_02', 72, '2020-02-29 22:31:54'),
(68, 'smoking2020-02-2006-35-14.jpg\r\n', 'Hall_01', 58, '2020-02-29 22:31:54'),
(69, 'smoking2020-02-2006-35-24.jpg', 'Railway_Station_09', 56, '2020-02-29 22:31:54'),
(70, 'smoking2020-02-2006-34-20.jpg', 'Railway_Station_08', 50, '2020-02-29 22:31:54'),
(71, 'smoking2020-02-2922-57-21.jpg', '9.9399,76.2602', 50, '2020-02-29 22:57:21'),
(72, 'smoking2020-02-2922-58-03.jpg', '9.9399,76.2602', 58, '2020-02-29 22:58:03'),
(73, 'smoking2020-02-2922-58-13.jpg', '9.9399,76.2602', 52, '2020-02-29 22:58:13'),
(74, 'smoking2020-02-2922-58-24.jpg', '9.9399,76.2602', 61, '2020-02-29 22:58:24'),
(75, 'smoking2020-02-2922-59-04.jpg', '9.9399,76.2602', 52, '2020-02-29 22:59:04'),
(76, 'smoking2020-02-2922-59-28.jpg', '9.9399,76.2602', 54, '2020-02-29 22:59:28'),
(77, 'smoking2020-02-2922-59-39.jpg', '9.9399,76.2602', 53, '2020-02-29 22:59:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Smk_Record`
--
ALTER TABLE `Smk_Record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Smk_Record`
--
ALTER TABLE `Smk_Record`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
