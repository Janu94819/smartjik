-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2024 at 03:01 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartjik`
--

-- --------------------------------------------------------

--
-- Table structure for table `atendence`
--

DROP TABLE IF EXISTS `atendence`;
CREATE TABLE IF NOT EXISTS `atendence` (
  `date` date NOT NULL,
  `place` varchar(50) NOT NULL,
  `id` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `advance_no` varchar(100) NOT NULL,
  `advance` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `atendence`
--

INSERT INTO `atendence` (`date`, `place`, `id`, `name`, `advance_no`, `advance`) VALUES
('2024-09-01', 'Bungalow', '01', 'janaki', '1', 10000),
('2024-09-03', 'Bungalow', '02', 'gamini', '2', 2000),
('2024-09-04', 'Bungalow', '02', 'gamini', '1', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `place` varchar(100) NOT NULL,
  `invoice_number` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(250) NOT NULL,
  `bill_date` date NOT NULL,
  `amount` int NOT NULL,
  `image` varchar(250) NOT NULL,
  PRIMARY KEY (`image`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`place`, `invoice_number`, `name`, `bill_date`, `amount`, `image`) VALUES
('Bungalow', '0012', 'warakaulla brothers', '2024-09-02', 2000, 'upload/');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_number` varchar(250) NOT NULL,
  `invoice_date` date NOT NULL,
  `bill_to` varchar(100) NOT NULL,
  `payment_team` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `e_mail` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `qty` int NOT NULL,
  `unit_price` decimal(65,0) NOT NULL,
  `total_price` decimal(65,0) NOT NULL,
  `invoice_sub_total` decimal(65,0) NOT NULL,
  `advance` decimal(65,0) NOT NULL,
  `sales_tax` decimal(65,0) NOT NULL,
  `discount` decimal(65,0) NOT NULL,
  `diposit_resived` decimal(65,0) NOT NULL,
  `total` decimal(65,0) NOT NULL,
  PRIMARY KEY (`invoice_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_number`, `invoice_date`, `bill_to`, `payment_team`, `address`, `phone`, `e_mail`, `description`, `qty`, `unit_price`, `total_price`, `invoice_sub_total`, `advance`, `sales_tax`, `discount`, `diposit_resived`, `total`) VALUES
('0012', '2024-09-12', 'maha', 'cash', '', '25454545', 'not provided', 'booking', 2, 1000, 3000, 0, 0, 0, 0, 0, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `place` varchar(250) NOT NULL,
  `id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(250) NOT NULL,
  `Availble_Qty` int NOT NULL,
  `Missing_Qty` int NOT NULL,
  `Date_of_added` date NOT NULL,
  `Reason` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(100) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_type` varchar(50) NOT NULL,
  PRIMARY KEY (`nic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `nic`, `email`, `password`, `user_type`) VALUES
('Janaki', '947422630v', 'jani@gmail.com', 'd5d51a2d88cda585e37315067891381f', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
