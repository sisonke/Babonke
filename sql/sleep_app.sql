-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2016 at 09:31 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sleep_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `Questions_table`
--

CREATE TABLE IF NOT EXISTS `Questions_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sleep` varchar(100) DEFAULT NULL,
  `wakeup` varchar(100) DEFAULT NULL,
  `result` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `Questions_table`
--

INSERT INTO `Questions_table` (`id`, `sleep`, `wakeup`, `result`) VALUES
(1, '12:41', '01:56', -11),
(2, '12:43', '12:45', 0),
(3, '12:43', '12:45', 0),
(4, '08:43', '12:45', 4),
(5, '12:54', '04:12', -8),
(6, '12:54', '04:12', -8),
(7, '07:54', '04:12', -3),
(8, '', '', 0),
(9, '02:30', '14:08', 12),
(10, '17:45', '01:23', -16),
(11, '12:43', '11:00', -1),
(12, '12:43', '11:00', -1),
(14, '19:30', '06:57', -13),
(15, '19:30', '06:57', -13),
(16, '19:30', '06:57', -13),
(17, '19:30', '06:57', -13),
(18, '12:00', '17:45', 5),
(19, '12:34', '07:04', -5),
(20, '22:54', '04:12', -18),
(21, '22:00', '08:12', -14),
(22, '22:00', '10:56', -11),
(23, '12:00', '06:00', -6),
(24, '01:59', '06:58', 5),
(25, '21:02', '22:59', 2),
(26, '20:02', '22:59', 3),
(27, '21:00', '06:45', -15),
(28, '18:22', '04:15', -14),
(29, '16:56', '01:24', -15),
(30, '12:56', '00:00', -13),
(31, '12:56', '00:00', -13),
(32, '12:56', '00:00', -13),
(33, '18:45', '04:56', -14),
(34, '18:56', '03:05', -16),
(35, '18:50', '05:00', -14),
(36, '19:00', '05:20', -14),
(37, '19:01', '05:23', -14),
(38, '10:45', '12:48', 2),
(39, '19:06', '05:00', -14),
(40, '19:10', '03:45', -16),
(41, '19:10', '03:45', -16),
(42, '10:45', '03:04', -7),
(43, '10:45', '03:04', -7),
(44, '21:59', '06:59', -15),
(45, '22:12', '07:07', -15),
(46, '22:12', '08:45', -14),
(47, '21:50', '07:12', -14);

-- --------------------------------------------------------

--
-- Table structure for table `Quotes_table`
--

CREATE TABLE IF NOT EXISTS `Quotes_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Quotes_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `sleep_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Quotes_table`
--

INSERT INTO `Quotes_table` (`id`, `Quotes_name`, `description`, `sleep_time`) VALUES
(1, NULL, 'Enough sleep is just as for good health as nutrition and exercise', 0),
(2, NULL, 'Sleep is the best meditation', 0),
(3, NULL, 'Sleep is the golden chain that ties health and our bodies together', 0),
(4, NULL, 'A good laugh and long sleep are the two best cures for anything', 0),
(5, NULL, 'Get  sleep eat healthy drink water exercise alot repeat', 0),
(7, 'Sleep is the best meditation', NULL, 0),
(8, 'Sleep is the golden chain that ties health and our bodies together', NULL, 0),
(9, 'A good laugh and long sleep are the two best cures for anything', NULL, 0),
(10, 'Get  sleep eat healthy drink water exercise alot repeat', NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
