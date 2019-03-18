-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2019 at 12:18 PM
-- Server version: 10.0.37-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backbenc_box`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_box`
--

CREATE TABLE `tbl_box` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_box`
--

INSERT INTO `tbl_box` (`id`, `name`, `body`, `time`) VALUES
(50, 'pavel', 'Hi', '2018-04-01 07:58:09'),
(56, 'pavel', 'pavel parvej', '2018-04-01 08:12:05'),
(57, 'pavel', 'pavel parvej', '2018-04-01 08:13:48'),
(58, 'pavel', 'Hi All', '2018-04-01 08:15:32'),
(63, 'rasel', 'oi', '2018-04-01 08:25:36'),
(64, 'pavel', 'fzsdv', '2018-04-01 08:27:22'),
(65, 'rasel', 'allah', '2018-04-01 09:37:09'),
(66, 'pavel', 'vvvv', '2018-04-01 09:38:15'),
(67, 'rasel', 'Allah', '2018-04-01 09:38:37'),
(68, 'rasel', 'gh', '2018-04-01 12:49:08'),
(69, 'rasel', 'ok', '2018-04-01 12:49:23'),
(70, 'rasel', 'oooooo', '2018-04-03 12:26:15'),
(71, 'pavel', 'Hi', '2018-04-03 12:26:21'),
(72, 'rasel', 'shei', '2018-04-03 12:26:28'),
(73, 'rasel', 'ji', '2018-04-05 17:05:03'),
(74, 'pavel', 'hlo', '2018-04-05 17:05:07'),
(75, 'pavel', 'how r all', '2018-04-05 17:05:19'),
(76, 'rasel', 'hi', '2018-04-17 16:38:31'),
(77, 'rasel', 'pavel koi', '2018-04-17 16:39:10'),
(78, 'raselcse33', 'hi', '2018-09-27 09:10:19'),
(79, 'mamun', 'sdf', '2018-10-19 20:18:59'),
(80, 'pavel', 'gfdgdsfg', '2018-11-15 11:49:25'),
(81, 'pavel', 'gdfsgdsf', '2018-11-15 11:49:30'),
(82, 'pavel', 'gdfgdf', '2018-11-15 11:49:49'),
(83, 'pavel_cse', 'drtd', '2018-11-15 11:53:09'),
(84, 'pavel_cse', 'fdgdfg', '2018-11-15 11:53:22'),
(85, 'pavel_cse', 'hfhfh', '2018-11-15 11:53:33'),
(86, 'raselcse33', 'hi', '2018-12-23 05:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`, `email`, `active`) VALUES
(1, 'rasel', '12345', 'raselcse33@gmail.com', 0),
(2, 'pavel', '123', 'p@gmail.com', 0),
(3, 'kamal', '12345', 'k@gmail.com', 0),
(4, 'rasel', '123', 'bhootcse330@gmail.com', 0),
(5, 'ggg', 'gggg', 'itsme.csepp@gmail.com', 0),
(6, 'raselcse33', 'rasel33cse', 'ras@gmail.com', 0),
(7, 'pavel_cse', 'pavel007', 'pavel@example.com', 1),
(8, 'Pavel', '123', 'pavel@gmail.com', 0),
(9, 'raselcse33', 'rasel33cse', 'rasel@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_box`
--
ALTER TABLE `tbl_box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_box`
--
ALTER TABLE `tbl_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
