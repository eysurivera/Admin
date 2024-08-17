-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 03:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4


DROP DATABASE dentasys;

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
-- Table structure for table `admin_info`
--




CREATE TABLE `admin_info` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT 'Admin Name',
  `username` varchar(20) NOT NULL DEFAULT 'admin000',
  `email_address` varchar(100) NOT NULL DEFAULT 'acerivera52@gmail.com',
  `contact_number` varchar(11) NOT NULL DEFAULT '09913041581',
  `password` varchar(16) NOT NULL DEFAULT 'password123'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `name`, `username`, `email_address`, `contact_number`, `password`) VALUES
(1, 'Admin Name', 'admin000', 'acerivera52@gmail.com', '09913041581', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_info`
--

CREATE TABLE `appointment_info` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` varchar(4) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `contact_number` varchar(13) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(4) NOT NULL,
  `appointment_procedure` varchar(200) NOT NULL,
  `notes` varchar(60) DEFAULT NULL,
  `appointment_status` varchar(8) NOT NULL DEFAULT 'Pending',
  `cancellation_status` varchar(15) NOT NULL DEFAULT 'None',
  `appointment_dentist` varchar(50) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_info`
--

INSERT INTO `appointment_info` (`appointment_id`, `patient_id`, `patient_name`, `email_address`, `contact_number`, `appointment_date`, `appointment_time`, `appointment_procedure`, `notes`, `appointment_status`, `cancellation_status`, `appointment_dentist`) VALUES
(1, '157', 'Richard Tapang', 'richardtapang132@gmail.com', '+639434823502', '2024-07-04', '11am', '1', '', 'Accepted', 'Requested', 'Richard Tapang'),
(2, '157', 'Richard Tapang', 'richardtapang132@gmail.com', '09913041581', '2024-07-10', '1pm', 'Pasta', 'Notes here', 'Accepted', 'None', 'Richard Tapang'),
(5, '157', 'Alex Dela Cruz', 'alexdelacruz123@gmail.com', '09876543211', '2024-07-24', '3pm', 'Pasta', 'Yiee', 'Accepted', 'None', 'Richard Tapang'),
(6, '157', 'Alex Dela Cruz', 'alexdelacruz123@gmail.com', '09876543211', '2024-07-11', '2pm', 'Pasta,bagong pangalan', '', 'Accepted', 'None', 'Richard Tapang');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_time`
--

CREATE TABLE `appointment_time` (
  `time_id` int(11) NOT NULL,
  `time_name` varchar(4) NOT NULL,
  `time_availability` varchar(11) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_time`
--

INSERT INTO `appointment_time` (`time_id`, `time_name`, `time_availability`) VALUES
(1, '9am', 'Available'),
(2, '10am', 'Available'),
(3, '11am', 'Available'),
(4, '12nn', 'Available'),
(5, '1pm', 'Available'),
(6, '2pm', 'Unavailable'),
(7, '3pm', 'Available'),
(8, '4pm', 'Available'),
(9, '5pm', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_info`
--

CREATE TABLE `cancellation_info` (
  `cancellation_id` int(11) NOT NULL,
  `appointment_id` varchar(4) NOT NULL,
  `patient_id` varchar(4) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `appointment_date` varchar(20) NOT NULL,
  `appointment_time` varchar(4) NOT NULL,
  `appointment_procedure` varchar(100) NOT NULL,
  `appointment_dentist` varchar(50) NOT NULL,
  `cancellation_reason` varchar(60) NOT NULL,
  `cancellation_status` varchar(9) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancellation_info`
--

INSERT INTO `cancellation_info` (`cancellation_id`, `appointment_id`, `patient_id`, `patient_name`, `appointment_date`, `appointment_time`, `appointment_procedure`, `appointment_dentist`, `cancellation_reason`, `cancellation_status`) VALUES
(8, '1', '157', 'Richard Tapang', '2024-07-04', '11am', '1', 'Richard Tapang', 'secret', 'Pending');

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
  `Status` varchar(10) NOT NULL DEFAULT 'Activated',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customer_id`, `full_name`, `contact_number`, `email_address`, `customer_profile`, `user_type`, `gender`, `age`, `address`, `Status`, `password`) VALUES
(0, 'Caezar D. Rivera', '09876543211', 'email123@gmail.com', NULL, 'Patient', 'Male', 0, '155, Abraham St. Tiaong, Baliwag, Bulacan', 'Active', '$2y$10$ysjwfSgPAXF1p1gkJJKS7O3p8K6T1cwsUqDhC8x4U8N5Bz.nCM0ze'),
(157, 'Alex Dela Cruz', '09876543211', 'alexdelacruz123@gmail.com', NULL, 'patient', 'Male', 21, '155 rivera', 'Activated', '$2y$10$FHByPvN4OCi92TibbZRHA.sfyV3Szm6OfVxTfuiUZtfHXEUv4zx8O'),
(444, 'Alexander Ace Rivera', '09913041581', 'acerivera456@gmail.com', 'hehe.jpg', 'patient', 'Male', 21, '155, Abraham St. Tiaong, Baliwag, Bulacan', 'Activated', '$2y$10$fX4WOeI.qMgnK5gsfNbX4eTumyWCUYCTf/BE46dpAn.2c1jlbr/jG'),
(939, 'Richard Tapang', '09913041581', 'richardtapang132@gmail.com', '654b9641b7296.png', 'dentist', 'Male', 21, '155, Abraham St. Tiaong, Baliwag, Bulacan', 'Activated', '$2y$10$7UoNMu09X/UZqFUN8JlWVO3jBhMG/oz.uO6gReezKbIRbZ47P70RO');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_description`) VALUES
(1, 'Pasta', ''),
(5, 'bagong pangalan', 'bagong description');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment_info`
--
ALTER TABLE `appointment_info`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `appointment_time`
--
ALTER TABLE `appointment_time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `cancellation_info`
--
ALTER TABLE `cancellation_info`
  ADD PRIMARY KEY (`cancellation_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment_info`
--
ALTER TABLE `appointment_info`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointment_time`
--
ALTER TABLE `appointment_time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cancellation_info`
--
ALTER TABLE `cancellation_info`
  MODIFY `cancellation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
