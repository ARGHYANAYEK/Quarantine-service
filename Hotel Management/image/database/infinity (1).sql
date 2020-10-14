-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 08:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infinity`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details_t`
--

CREATE TABLE `booking_details_t` (
  `Booking_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Hotel_id` int(11) NOT NULL,
  `Hotel_name` varchar(255) NOT NULL,
  `User_name` varchar(100) NOT NULL,
  `User_email` varchar(100) NOT NULL,
  `User_phone_no` varchar(100) NOT NULL,
  `Check_in_date` date NOT NULL,
  `Check_out_date` date NOT NULL,
  `Occupancy` int(11) NOT NULL,
  `Hotel_rent` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_manager_t`
--

CREATE TABLE `hotel_manager_t` (
  `hotel_manager_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_manager_t`
--

INSERT INTO `hotel_manager_t` (`hotel_manager_id`, `first_name`, `last_name`, `email`, `password`, `contact_no`) VALUES
(1, 'Arghya', 'Nayek', 'arghyanayek@gmail.com', 'Arghya@12', '8907834561');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_t`
--

CREATE TABLE `hotel_t` (
  `Hotel_id` int(11) NOT NULL,
  `Hotel_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Hotel_place` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Hotel_rent` double NOT NULL,
  `hotel_sub_place` varchar(255) NOT NULL,
  `available` tinyint(4) NOT NULL,
  `hotel_manager_id` int(11) NOT NULL,
  `Hotel_quarantine` tinyint(4) NOT NULL,
  `Hotel_pictures` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_t`
--

INSERT INTO `hotel_t` (`Hotel_id`, `Hotel_name`, `Hotel_place`, `Hotel_rent`, `hotel_sub_place`, `available`, `hotel_manager_id`, `Hotel_quarantine`, `Hotel_pictures`) VALUES
(19, 'The Maureen', 'Bangalore', 2500, 'Kormangala', 1, 1, 1, 'hotel2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_details_t`
--

CREATE TABLE `user_details_t` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details_t`
--

INSERT INTO `user_details_t` (`user_id`, `first_name`, `last_name`, `email_id`, `password`, `mobile`) VALUES
(100, 'Arghya', 'Nayek', 'Arghya001@gmail.com', 'Arghya@12', '9547314404'),
(102, 'Baisakhi', 'Nayek', 'Baisakhi@gmail.com', 'BAisakhi@123', '9090878923'),
(103, 'Mamata ', 'Nayek', 'mamata.nayek001@gmail.com', 'mamata@12', '9932983555'),
(104, 'Anusuya', 'Sahana', 'Anusuya@gmail.com', 'Tukun@12', '8679098856'),
(105, 'Amit', 'De', 'amit@gmail.com', 'Tukun@12', '8678987800'),
(107, 'Hriya ', 'Ghosh', 'hriyaghosh@gmail.com', 'Hriya@12', '9382205000'),
(108, 'Arghya', 'Nayek', 'arghyanayek99@gmail.com', 'Arghya@12', '7384934925');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_details_t`
--
ALTER TABLE `booking_details_t`
  ADD PRIMARY KEY (`Booking_id`);

--
-- Indexes for table `hotel_manager_t`
--
ALTER TABLE `hotel_manager_t`
  ADD PRIMARY KEY (`hotel_manager_id`);

--
-- Indexes for table `hotel_t`
--
ALTER TABLE `hotel_t`
  ADD PRIMARY KEY (`Hotel_id`);

--
-- Indexes for table `user_details_t`
--
ALTER TABLE `user_details_t`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details_t`
--
ALTER TABLE `booking_details_t`
  MODIFY `Booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotel_manager_t`
--
ALTER TABLE `hotel_manager_t`
  MODIFY `hotel_manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_t`
--
ALTER TABLE `hotel_t`
  MODIFY `Hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_details_t`
--
ALTER TABLE `user_details_t`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
