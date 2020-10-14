-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2020 at 06:02 AM
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
(1, 'Arghya', 'Nayek', 'arghyanayek@gmail.com', 'Arghya@12', '8907834561'),
(2, 'Amit', 'De', 'amit@gmail.com', 'amitde@34', '+448678987800');

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
(19, 'The Maureen', 'Bangalore', 2500, 'Kormangala', 1, 1, 1, 'hotel2.jpg'),
(20, 'Queen', 'Bangalore', 2500, 'Hebbal', 1, 2, 0, 'hotel5.jpg'),
(21, 'The Sky', 'Bangalore', 2500, 'Hebbal', 1, 1, 1, 'hotel5.jpg'),
(22, 'Queen', 'Kolkata', 3000, 'Dumdum', 1, 1, 1, 'hotel7.jpg'),
(23, 'The sunlight', 'Bangalore', 3000, 'Mg Road', 1, 1, 1, 'hotel1.jpg'),
(24, 'Anusha', 'Bangalore', 2500, 'Mg Road', 1, 1, 1, 'hotel4.jpg'),
(25, 'Blue Hill', 'Bangalore', 2500, 'Marathali', 1, 1, 1, 'hotel6.jpg'),
(26, 'Black Book', 'Bangalore', 2500, 'Marathali', 1, 1, 0, 'hotel7.jpg'),
(27, 'Joy Of Life', 'Hyderabad', 2500, 'Secuderabad', 1, 1, 1, 'hotel14.jpg'),
(28, 'Rupsa *****', 'Hyderabad', 2500, 'Secuderabad', 1, 1, 0, 'hotel18.jpg'),
(29, 'Rupsa *****', 'Hyderabad', 2500, 'Secuderabad', 1, 1, 0, 'hotel18.jpg'),
(30, 'Chand Gram*****', 'Hyderabad', 3000, 'Mehdipatnam', 1, 1, 0, 'hotel25.jpg'),
(31, 'Saheli & Diganto Hotel', 'Hyderabad', 4000, 'Ameerpet', 1, 1, 1, 'hotel11.jpg'),
(32, ' THE OBEROI GRAND', 'Hyderabad', 3000, 'Gachibowli', 1, 1, 1, 'hotel39.jpg'),
(33, 'STORY OF LOVE', 'Kolkata', 3000, 'Park Street', 1, 1, 1, 'hotel38.jpg'),
(34, 'THE LEELA PLACE', 'Kolkata', 6000, 'Esplanade', 1, 1, 1, 'hotel22.jpg'),
(35, 'ELESEWHERE', 'Kolkata', 3000, 'saltlake', 1, 1, 1, 'hotel37.jpg'),
(36, 'THE IMPREAL HOTEL', 'Kolkata', 2500, 'Newtown', 1, 1, 1, 'hotel9.jpg'),
(37, 'SURYA', 'New Delhi', 2500, 'New Delhi Railway Station', 1, 1, 1, 'hotel30.jpg'),
(38, ' JAWAI LEOPARD CAMP', 'New Delhi', 3000, 'Karol Bagh', 1, 1, 0, 'hotel17.jpg'),
(39, 'THE ULTIMATE TRAVELLING CAMP', 'New Delhi', 3000, 'Delhi Airport', 1, 1, 0, 'hotel24.jpg'),
(40, 'TAJ SAFARIS', 'Mumbai', 2500, 'Juhu', 1, 1, 1, 'hotel33.jpg'),
(41, ' THE OBEROI GRAND', 'Mumbai', 3000, 'Thane', 1, 1, 1, 'hotel32.jpg'),
(42, 'Queen', 'Mumbai', 2500, 'Powai', 1, 1, 1, 'hotel14.jpg'),
(43, 'The Sky', 'Mumbai', 2500, 'Navi Mumbai', 1, 1, 1, 'hotel1.jpg'),
(44, ' ITC GRAND CHOLA', 'Mumbai', 6000, 'Mumbai Airport', 1, 1, 1, 'hotel27.jpg'),
(45, ' THE LEELA', 'Chennai', 2500, 'T nagar', 1, 1, 1, 'hotel4.jpg'),
(46, 'Rupsa *****', 'Chennai', 3000, 'Chennai central railway', 1, 1, 1, 'hotel21.jpg'),
(47, ' JAWAI LEOPARD CAMP', 'Chennai', 2500, 'ECR Beach', 1, 1, 1, 'hotel34.jpg'),
(48, ' LAKE PALACE', 'Chennai', 4000, 'Adyar', 1, 1, 0, 'hotel12.jpg');

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
(109, 'Arghya', 'Nayek', 'arghyanayek001@gmail.com', 'Arghya@12', '08907834561'),
(110, 'Arghya', 'Nayek', 'arghyanayek@gmail.com', 'Arghya@12', '08907834561');

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
  MODIFY `Booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hotel_manager_t`
--
ALTER TABLE `hotel_manager_t`
  MODIFY `hotel_manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel_t`
--
ALTER TABLE `hotel_t`
  MODIFY `Hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user_details_t`
--
ALTER TABLE `user_details_t`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
