-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 10:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

CREATE DATABASE dentasys;
USE dentasys;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentasys`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `customer_id` int(3) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `contact_number` varchar(11) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `customer_profile` varchar(40) DEFAULT NULL,
  `user_type` varchar(7) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` int(100) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customer_id`, `full_name`, `contact_number`, `email_address`, `customer_profile`, `user_type`, `gender`, `age`, `address`, `password`) VALUES
(123, 'Alexander Ace Rivera', '09913041581', 'acerivera456@gmail.com', NULL, 'patient', 'Male', 21, '', 'password123'),
(256, 'Alexander Ace Rivera', '09913041581', 'acerivera456@gmail.com', NULL, 'patient', 'Male', 21, '155, Abraham St. Tiaong, Baliwag, Bulacan', 'password123'),
(333, 'Alexander Ace Rivera', '09913041581', 'acerivera456@gmail.com', NULL, 'patient', 'Male', 21, '155, Abraham St. Tiaong, Baliwag, Bulacan', '$2y$10$7Ph/VkTubd7ATtJOyA6NT.iwx6LtSN9YU3QK9daHA9kGMgI938BkO'),
(444, 'Alexander Ace Rivera', '09913041581', 'acerivera456@gmail.com', NULL, 'patient', 'Male', 21, '155, Abraham St. Tiaong, Baliwag, Bulacan', '$2y$10$Vj3uMwQdu0v0QOF/IDjtAebEHGHppzpfhUf3zf04dC8Ma66yYevFe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
